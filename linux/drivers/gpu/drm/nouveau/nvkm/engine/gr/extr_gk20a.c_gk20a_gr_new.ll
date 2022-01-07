; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gk20a.c_gk20a_gr_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gk20a.c_gk20a_gr_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_gr = type { i32 }
%struct.gf100_gr = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_gr }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gk20a_gr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"fecs_inst\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"fecs_data\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"gpccs_inst\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"gpccs_data\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"sw_nonctx\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"sw_ctx\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"sw_bundle_init\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"sw_method_init\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gk20a_gr_new(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_gr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_gr**, align 8
  %8 = alloca %struct.gf100_gr*, align 8
  %9 = alloca i32, align 4
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_gr** %2, %struct.nvkm_gr*** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.gf100_gr* @kzalloc(i32 36, i32 %10)
  store %struct.gf100_gr* %11, %struct.gf100_gr** %8, align 8
  %12 = icmp ne %struct.gf100_gr* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %92

16:                                               ; preds = %3
  %17 = load %struct.gf100_gr*, %struct.gf100_gr** %8, align 8
  %18 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %17, i32 0, i32 8
  %19 = load %struct.nvkm_gr**, %struct.nvkm_gr*** %7, align 8
  store %struct.nvkm_gr* %18, %struct.nvkm_gr** %19, align 8
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.gf100_gr*, %struct.gf100_gr** %8, align 8
  %23 = call i32 @gf100_gr_ctor(i32* @gk20a_gr, %struct.nvkm_device* %20, i32 %21, %struct.gf100_gr* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %92

28:                                               ; preds = %16
  %29 = load %struct.gf100_gr*, %struct.gf100_gr** %8, align 8
  %30 = load %struct.gf100_gr*, %struct.gf100_gr** %8, align 8
  %31 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %30, i32 0, i32 7
  %32 = call i64 @gf100_gr_ctor_fw(%struct.gf100_gr* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %28
  %35 = load %struct.gf100_gr*, %struct.gf100_gr** %8, align 8
  %36 = load %struct.gf100_gr*, %struct.gf100_gr** %8, align 8
  %37 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %36, i32 0, i32 6
  %38 = call i64 @gf100_gr_ctor_fw(%struct.gf100_gr* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = load %struct.gf100_gr*, %struct.gf100_gr** %8, align 8
  %42 = load %struct.gf100_gr*, %struct.gf100_gr** %8, align 8
  %43 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %42, i32 0, i32 5
  %44 = call i64 @gf100_gr_ctor_fw(%struct.gf100_gr* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.gf100_gr*, %struct.gf100_gr** %8, align 8
  %48 = load %struct.gf100_gr*, %struct.gf100_gr** %8, align 8
  %49 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %48, i32 0, i32 4
  %50 = call i64 @gf100_gr_ctor_fw(%struct.gf100_gr* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %40, %34, %28
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %92

55:                                               ; preds = %46
  %56 = load %struct.gf100_gr*, %struct.gf100_gr** %8, align 8
  %57 = load %struct.gf100_gr*, %struct.gf100_gr** %8, align 8
  %58 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %57, i32 0, i32 3
  %59 = call i32 @gk20a_gr_av_to_init(%struct.gf100_gr* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %92

64:                                               ; preds = %55
  %65 = load %struct.gf100_gr*, %struct.gf100_gr** %8, align 8
  %66 = load %struct.gf100_gr*, %struct.gf100_gr** %8, align 8
  %67 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %66, i32 0, i32 2
  %68 = call i32 @gk20a_gr_aiv_to_init(%struct.gf100_gr* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %92

73:                                               ; preds = %64
  %74 = load %struct.gf100_gr*, %struct.gf100_gr** %8, align 8
  %75 = load %struct.gf100_gr*, %struct.gf100_gr** %8, align 8
  %76 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %75, i32 0, i32 1
  %77 = call i32 @gk20a_gr_av_to_init(%struct.gf100_gr* %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %92

82:                                               ; preds = %73
  %83 = load %struct.gf100_gr*, %struct.gf100_gr** %8, align 8
  %84 = load %struct.gf100_gr*, %struct.gf100_gr** %8, align 8
  %85 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %84, i32 0, i32 0
  %86 = call i32 @gk20a_gr_av_to_method(%struct.gf100_gr* %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32* %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %4, align 4
  br label %92

91:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %89, %80, %71, %62, %52, %26, %13
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.gf100_gr* @kzalloc(i32, i32) #1

declare dso_local i32 @gf100_gr_ctor(i32*, %struct.nvkm_device*, i32, %struct.gf100_gr*) #1

declare dso_local i64 @gf100_gr_ctor_fw(%struct.gf100_gr*, i8*, i32*) #1

declare dso_local i32 @gk20a_gr_av_to_init(%struct.gf100_gr*, i8*, i32*) #1

declare dso_local i32 @gk20a_gr_aiv_to_init(%struct.gf100_gr*, i8*, i32*) #1

declare dso_local i32 @gk20a_gr_av_to_method(%struct.gf100_gr*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
