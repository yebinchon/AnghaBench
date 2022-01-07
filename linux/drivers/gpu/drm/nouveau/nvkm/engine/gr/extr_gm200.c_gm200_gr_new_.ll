; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gm200.c_gm200_gr_new_.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gm200.c_gm200_gr_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr_func = type { i32 }
%struct.nvkm_device = type { i32 }
%struct.nvkm_gr = type { i32 }
%struct.gf100_gr = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_gr }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NVKM_SECBOOT_FALCON_FECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"gr/fecs_inst\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"gr/fecs_data\00", align 1
@NVKM_SECBOOT_FALCON_GPCCS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"gr/gpccs_inst\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"gr/gpccs_data\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"gr/sw_nonctx\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"gr/sw_ctx\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"gr/sw_bundle_init\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"gr/sw_method_init\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gm200_gr_new_(%struct.gf100_gr_func* %0, %struct.nvkm_device* %1, i32 %2, %struct.nvkm_gr** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gf100_gr_func*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_gr**, align 8
  %10 = alloca %struct.gf100_gr*, align 8
  %11 = alloca i32, align 4
  store %struct.gf100_gr_func* %0, %struct.gf100_gr_func** %6, align 8
  store %struct.nvkm_device* %1, %struct.nvkm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nvkm_gr** %3, %struct.nvkm_gr*** %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.gf100_gr* @kzalloc(i32 36, i32 %12)
  store %struct.gf100_gr* %13, %struct.gf100_gr** %10, align 8
  %14 = icmp ne %struct.gf100_gr* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %102

18:                                               ; preds = %4
  %19 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %20 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %19, i32 0, i32 8
  %21 = load %struct.nvkm_gr**, %struct.nvkm_gr*** %9, align 8
  store %struct.nvkm_gr* %20, %struct.nvkm_gr** %21, align 8
  %22 = load %struct.gf100_gr_func*, %struct.gf100_gr_func** %6, align 8
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %26 = call i32 @gf100_gr_ctor(%struct.gf100_gr_func* %22, %struct.nvkm_device* %23, i32 %24, %struct.gf100_gr* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %5, align 4
  br label %102

31:                                               ; preds = %18
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %33 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NVKM_SECBOOT_FALCON_FECS, align 4
  %36 = call i32 @nvkm_secboot_is_managed(i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %31
  %39 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %40 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %41 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %40, i32 0, i32 7
  %42 = call i32 @gf100_gr_ctor_fw(%struct.gf100_gr* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %41)
  store i32 %42, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %46 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %47 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %46, i32 0, i32 6
  %48 = call i32 @gf100_gr_ctor_fw(%struct.gf100_gr* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %47)
  store i32 %48, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44, %38
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %5, align 4
  br label %102

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %31
  %54 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %55 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @NVKM_SECBOOT_FALCON_GPCCS, align 4
  %58 = call i32 @nvkm_secboot_is_managed(i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %53
  %61 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %62 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %63 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %62, i32 0, i32 5
  %64 = call i32 @gf100_gr_ctor_fw(%struct.gf100_gr* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %63)
  store i32 %64, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %68 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %69 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %68, i32 0, i32 4
  %70 = call i32 @gf100_gr_ctor_fw(%struct.gf100_gr* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %69)
  store i32 %70, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66, %60
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %5, align 4
  br label %102

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %53
  %76 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %77 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %78 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %77, i32 0, i32 3
  %79 = call i32 @gk20a_gr_av_to_init(%struct.gf100_gr* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %78)
  store i32 %79, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %99, label %81

81:                                               ; preds = %75
  %82 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %83 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %84 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %83, i32 0, i32 2
  %85 = call i32 @gk20a_gr_aiv_to_init(%struct.gf100_gr* %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* %84)
  store i32 %85, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %81
  %88 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %89 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %90 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %89, i32 0, i32 1
  %91 = call i32 @gk20a_gr_av_to_init(%struct.gf100_gr* %88, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32* %90)
  store i32 %91, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %95 = load %struct.gf100_gr*, %struct.gf100_gr** %10, align 8
  %96 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %95, i32 0, i32 0
  %97 = call i32 @gk20a_gr_av_to_method(%struct.gf100_gr* %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32* %96)
  store i32 %97, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93, %87, %81, %75
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %5, align 4
  br label %102

101:                                              ; preds = %93
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %99, %72, %50, %29, %15
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.gf100_gr* @kzalloc(i32, i32) #1

declare dso_local i32 @gf100_gr_ctor(%struct.gf100_gr_func*, %struct.nvkm_device*, i32, %struct.gf100_gr*) #1

declare dso_local i32 @nvkm_secboot_is_managed(i32, i32) #1

declare dso_local i32 @gf100_gr_ctor_fw(%struct.gf100_gr*, i8*, i32*) #1

declare dso_local i32 @gk20a_gr_av_to_init(%struct.gf100_gr*, i8*, i32*) #1

declare dso_local i32 @gk20a_gr_aiv_to_init(%struct.gf100_gr*, i8*, i32*) #1

declare dso_local i32 @gk20a_gr_av_to_method(%struct.gf100_gr*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
