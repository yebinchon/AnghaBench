; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_virt_add_phys_encs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_encoder.c_dpu_encoder_virt_add_phys_encs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_encoder_virt = type { i32, %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** }
%struct.dpu_encoder_phys = type { i32 }
%struct.dpu_enc_phys_init_params = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@NUM_PHYS_ENCODER_TYPES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"too many physical encoders %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MSM_DISPLAY_CAP_VID_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to init vid enc: %ld\0A\00", align 1
@MSM_DISPLAY_CAP_CMD_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to init cmd enc: %ld\0A\00", align 1
@ENC_ROLE_SLAVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.dpu_encoder_virt*, %struct.dpu_enc_phys_init_params*)* @dpu_encoder_virt_add_phys_encs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_encoder_virt_add_phys_encs(i32 %0, %struct.dpu_encoder_virt* %1, %struct.dpu_enc_phys_init_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dpu_encoder_virt*, align 8
  %7 = alloca %struct.dpu_enc_phys_init_params*, align 8
  %8 = alloca %struct.dpu_encoder_phys*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.dpu_encoder_virt* %1, %struct.dpu_encoder_virt** %6, align 8
  store %struct.dpu_enc_phys_init_params* %2, %struct.dpu_enc_phys_init_params** %7, align 8
  store %struct.dpu_encoder_phys* null, %struct.dpu_encoder_phys** %8, align 8
  %9 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %10 = call i32 @DPU_DEBUG_ENC(%struct.dpu_encoder_virt* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %12 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* @NUM_PHYS_ENCODER_TYPES, align 8
  %16 = add nsw i64 %14, %15
  %17 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %18 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %17, i32 0, i32 3
  %19 = load %struct.dpu_encoder_phys**, %struct.dpu_encoder_phys*** %18, align 8
  %20 = call i64 @ARRAY_SIZE(%struct.dpu_encoder_phys** %19)
  %21 = icmp sge i64 %16, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %24 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %25 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @DPU_ERROR_ENC(%struct.dpu_encoder_virt* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %125

30:                                               ; preds = %3
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @MSM_DISPLAY_CAP_VID_MODE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %70

35:                                               ; preds = %30
  %36 = load %struct.dpu_enc_phys_init_params*, %struct.dpu_enc_phys_init_params** %7, align 8
  %37 = call %struct.dpu_encoder_phys* @dpu_encoder_phys_vid_init(%struct.dpu_enc_phys_init_params* %36)
  store %struct.dpu_encoder_phys* %37, %struct.dpu_encoder_phys** %8, align 8
  %38 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %8, align 8
  %39 = call i64 @IS_ERR_OR_NULL(%struct.dpu_encoder_phys* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %43 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %8, align 8
  %44 = call i32 @PTR_ERR(%struct.dpu_encoder_phys* %43)
  %45 = call i32 @DPU_ERROR_ENC(%struct.dpu_encoder_virt* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %8, align 8
  %47 = icmp eq %struct.dpu_encoder_phys* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  br label %54

51:                                               ; preds = %41
  %52 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %8, align 8
  %53 = call i32 @PTR_ERR(%struct.dpu_encoder_phys* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i32 [ %50, %48 ], [ %53, %51 ]
  store i32 %55, i32* %4, align 4
  br label %125

56:                                               ; preds = %35
  %57 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %8, align 8
  %58 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %59 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %58, i32 0, i32 3
  %60 = load %struct.dpu_encoder_phys**, %struct.dpu_encoder_phys*** %59, align 8
  %61 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %62 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %60, i64 %64
  store %struct.dpu_encoder_phys* %57, %struct.dpu_encoder_phys** %65, align 8
  %66 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %67 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %56, %30
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @MSM_DISPLAY_CAP_CMD_MODE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %110

75:                                               ; preds = %70
  %76 = load %struct.dpu_enc_phys_init_params*, %struct.dpu_enc_phys_init_params** %7, align 8
  %77 = call %struct.dpu_encoder_phys* @dpu_encoder_phys_cmd_init(%struct.dpu_enc_phys_init_params* %76)
  store %struct.dpu_encoder_phys* %77, %struct.dpu_encoder_phys** %8, align 8
  %78 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %8, align 8
  %79 = call i64 @IS_ERR_OR_NULL(%struct.dpu_encoder_phys* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %75
  %82 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %83 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %8, align 8
  %84 = call i32 @PTR_ERR(%struct.dpu_encoder_phys* %83)
  %85 = call i32 @DPU_ERROR_ENC(%struct.dpu_encoder_virt* %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %8, align 8
  %87 = icmp eq %struct.dpu_encoder_phys* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  br label %94

91:                                               ; preds = %81
  %92 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %8, align 8
  %93 = call i32 @PTR_ERR(%struct.dpu_encoder_phys* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = phi i32 [ %90, %88 ], [ %93, %91 ]
  store i32 %95, i32* %4, align 4
  br label %125

96:                                               ; preds = %75
  %97 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %8, align 8
  %98 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %99 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %98, i32 0, i32 3
  %100 = load %struct.dpu_encoder_phys**, %struct.dpu_encoder_phys*** %99, align 8
  %101 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %102 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %100, i64 %104
  store %struct.dpu_encoder_phys* %97, %struct.dpu_encoder_phys** %105, align 8
  %106 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %107 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %96, %70
  %111 = load %struct.dpu_enc_phys_init_params*, %struct.dpu_enc_phys_init_params** %7, align 8
  %112 = getelementptr inbounds %struct.dpu_enc_phys_init_params, %struct.dpu_enc_phys_init_params* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @ENC_ROLE_SLAVE, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %8, align 8
  %118 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %119 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %118, i32 0, i32 2
  store %struct.dpu_encoder_phys* %117, %struct.dpu_encoder_phys** %119, align 8
  br label %124

120:                                              ; preds = %110
  %121 = load %struct.dpu_encoder_phys*, %struct.dpu_encoder_phys** %8, align 8
  %122 = load %struct.dpu_encoder_virt*, %struct.dpu_encoder_virt** %6, align 8
  %123 = getelementptr inbounds %struct.dpu_encoder_virt, %struct.dpu_encoder_virt* %122, i32 0, i32 1
  store %struct.dpu_encoder_phys* %121, %struct.dpu_encoder_phys** %123, align 8
  br label %124

124:                                              ; preds = %120, %116
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %124, %94, %54, %22
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @DPU_DEBUG_ENC(%struct.dpu_encoder_virt*, i8*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.dpu_encoder_phys**) #1

declare dso_local i32 @DPU_ERROR_ENC(%struct.dpu_encoder_virt*, i8*, i32) #1

declare dso_local %struct.dpu_encoder_phys* @dpu_encoder_phys_vid_init(%struct.dpu_enc_phys_init_params*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.dpu_encoder_phys*) #1

declare dso_local i32 @PTR_ERR(%struct.dpu_encoder_phys*) #1

declare dso_local %struct.dpu_encoder_phys* @dpu_encoder_phys_cmd_init(%struct.dpu_enc_phys_init_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
