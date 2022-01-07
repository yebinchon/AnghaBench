; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_dev.c_komeda_parse_pipe_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_dev.c_komeda_parse_pipe_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_dev = type { i64, %struct.komeda_pipeline** }
%struct.komeda_pipeline = type { i32, i32, i8**, i32, %struct.clk* }
%struct.clk = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"pxclk\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"get pxclk for pipeline %d failed!\0A\00", align 1
@KOMEDA_OF_PORT_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.komeda_dev*, %struct.device_node*)* @komeda_parse_pipe_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_parse_pipe_dt(%struct.komeda_dev* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.komeda_dev*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.komeda_pipeline*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.komeda_dev* %0, %struct.komeda_dev** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = call i32 @of_property_read_u32(%struct.device_node* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %8)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.komeda_dev*, %struct.komeda_dev** %4, align 8
  %17 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %85

23:                                               ; preds = %14
  %24 = load %struct.komeda_dev*, %struct.komeda_dev** %4, align 8
  %25 = getelementptr inbounds %struct.komeda_dev, %struct.komeda_dev* %24, i32 0, i32 1
  %26 = load %struct.komeda_pipeline**, %struct.komeda_pipeline*** %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds %struct.komeda_pipeline*, %struct.komeda_pipeline** %26, i64 %27
  %29 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %28, align 8
  store %struct.komeda_pipeline* %29, %struct.komeda_pipeline** %6, align 8
  %30 = load %struct.device_node*, %struct.device_node** %5, align 8
  %31 = call %struct.clk* @of_clk_get_by_name(%struct.device_node* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.clk* %31, %struct.clk** %7, align 8
  %32 = load %struct.clk*, %struct.clk** %7, align 8
  %33 = call i64 @IS_ERR(%struct.clk* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %23
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  %38 = load %struct.clk*, %struct.clk** %7, align 8
  %39 = call i32 @PTR_ERR(%struct.clk* %38)
  store i32 %39, i32* %3, align 4
  br label %85

40:                                               ; preds = %23
  %41 = load %struct.clk*, %struct.clk** %7, align 8
  %42 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %43 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %42, i32 0, i32 4
  store %struct.clk* %41, %struct.clk** %43, align 8
  %44 = load %struct.device_node*, %struct.device_node** %5, align 8
  %45 = load i32, i32* @KOMEDA_OF_PORT_OUTPUT, align 4
  %46 = call i8* @of_graph_get_remote_node(%struct.device_node* %44, i32 %45, i32 0)
  %47 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %48 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %47, i32 0, i32 2
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  store i8* %46, i8** %50, align 8
  %51 = load %struct.device_node*, %struct.device_node** %5, align 8
  %52 = load i32, i32* @KOMEDA_OF_PORT_OUTPUT, align 4
  %53 = call i8* @of_graph_get_remote_node(%struct.device_node* %51, i32 %52, i32 1)
  %54 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %55 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %54, i32 0, i32 2
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  store i8* %53, i8** %57, align 8
  %58 = load %struct.device_node*, %struct.device_node** %5, align 8
  %59 = load i32, i32* @KOMEDA_OF_PORT_OUTPUT, align 4
  %60 = call i32 @of_graph_get_port_by_id(%struct.device_node* %58, i32 %59)
  %61 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %62 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %64 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %63, i32 0, i32 2
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %40
  %70 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %71 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %70, i32 0, i32 2
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br label %76

76:                                               ; preds = %69, %40
  %77 = phi i1 [ false, %40 ], [ %75, %69 ]
  %78 = zext i1 %77 to i32
  %79 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %80 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.device_node*, %struct.device_node** %5, align 8
  %82 = call i32 @of_node_get(%struct.device_node* %81)
  %83 = load %struct.komeda_pipeline*, %struct.komeda_pipeline** %6, align 8
  %84 = getelementptr inbounds %struct.komeda_pipeline, %struct.komeda_pipeline* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %76, %35, %20
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local %struct.clk* @of_clk_get_by_name(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @DRM_ERROR(i8*, i64) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i8* @of_graph_get_remote_node(%struct.device_node*, i32, i32) #1

declare dso_local i32 @of_graph_get_port_by_id(%struct.device_node*, i32) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
