; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-ops.c_ccp_queue_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_ccp-ops.c_ccp_queue_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_data = type { %struct.ccp_dm_workarea, %struct.ccp_sg_workarea }
%struct.ccp_dm_workarea = type { i32, i32 }
%struct.ccp_sg_workarea = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@u64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccp_data*, i32)* @ccp_queue_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_queue_buf(%struct.ccp_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccp_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccp_sg_workarea*, align 8
  %7 = alloca %struct.ccp_dm_workarea*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ccp_data* %0, %struct.ccp_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ccp_data*, %struct.ccp_data** %4, align 8
  %11 = getelementptr inbounds %struct.ccp_data, %struct.ccp_data* %10, i32 0, i32 1
  store %struct.ccp_sg_workarea* %11, %struct.ccp_sg_workarea** %6, align 8
  %12 = load %struct.ccp_data*, %struct.ccp_data** %4, align 8
  %13 = getelementptr inbounds %struct.ccp_data, %struct.ccp_data* %12, i32 0, i32 0
  store %struct.ccp_dm_workarea* %13, %struct.ccp_dm_workarea** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %7, align 8
  %18 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %7, align 8
  %21 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memset(i32 %19, i32 0, i32 %22)
  br label %24

24:                                               ; preds = %16, %2
  %25 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %6, align 8
  %26 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %94

30:                                               ; preds = %24
  %31 = load i32, i32* @u64, align 4
  %32 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %6, align 8
  %33 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %7, align 8
  %36 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @min_t(i32 %31, i64 %34, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %7, align 8
  %40 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %6, align 8
  %43 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %6, align 8
  %46 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @scatterwalk_map_and_copy(i32 %41, %struct.TYPE_2__* %44, i64 %47, i32 %48, i32 %49)
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %64, %30
  %52 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %6, align 8
  %53 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %7, align 8
  %59 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ult i32 %57, %60
  br label %62

62:                                               ; preds = %56, %51
  %63 = phi i1 [ false, %51 ], [ %61, %56 ]
  br i1 %63, label %64, label %92

64:                                               ; preds = %62
  %65 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %6, align 8
  %66 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %6, align 8
  %71 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %69, %72
  %74 = load %struct.ccp_dm_workarea*, %struct.ccp_dm_workarea** %7, align 8
  %75 = getelementptr inbounds %struct.ccp_dm_workarea, %struct.ccp_dm_workarea* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = sub i32 %76, %77
  %79 = call i32 @min(i64 %73, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* @u64, align 4
  %81 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %6, align 8
  %82 = getelementptr inbounds %struct.ccp_sg_workarea, %struct.ccp_sg_workarea* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @min_t(i32 %80, i64 %83, i32 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %8, align 4
  %88 = add i32 %87, %86
  store i32 %88, i32* %8, align 4
  %89 = load %struct.ccp_sg_workarea*, %struct.ccp_sg_workarea** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @ccp_update_sg_workarea(%struct.ccp_sg_workarea* %89, i32 %90)
  br label %51

92:                                               ; preds = %62
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %29
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @min_t(i32, i64, i32) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32, %struct.TYPE_2__*, i64, i32, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @ccp_update_sg_workarea(%struct.ccp_sg_workarea*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
