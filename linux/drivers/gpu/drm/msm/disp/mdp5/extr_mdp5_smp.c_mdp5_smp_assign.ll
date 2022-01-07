; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_smp.c_mdp5_smp_assign.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_smp.c_mdp5_smp_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_smp = type { i32 }
%struct.mdp5_smp_state = type { i32 }
%struct.mdp5_kms = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"%s[%d]: request %d SMP blocks\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot allocate %d SMP blocks: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdp5_smp_assign(%struct.mdp5_smp* %0, %struct.mdp5_smp_state* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mdp5_smp*, align 8
  %7 = alloca %struct.mdp5_smp_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mdp5_kms*, align 8
  %11 = alloca %struct.drm_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mdp5_smp* %0, %struct.mdp5_smp** %6, align 8
  store %struct.mdp5_smp_state* %1, %struct.mdp5_smp_state** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.mdp5_smp*, %struct.mdp5_smp** %6, align 8
  %17 = call %struct.mdp5_kms* @get_kms(%struct.mdp5_smp* %16)
  store %struct.mdp5_kms* %17, %struct.mdp5_kms** %10, align 8
  %18 = load %struct.mdp5_kms*, %struct.mdp5_kms** %10, align 8
  %19 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %18, i32 0, i32 0
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %11, align 8
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %59, %4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @pipe2nclients(i32 %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @pipe2client(i32 %27, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 255
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  br label %59

35:                                               ; preds = %26
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @pipe2name(i32 %36)
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  %41 = load %struct.mdp5_smp*, %struct.mdp5_smp** %6, align 8
  %42 = load %struct.mdp5_smp_state*, %struct.mdp5_smp_state** %7, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @smp_request_block(%struct.mdp5_smp* %41, %struct.mdp5_smp_state* %42, i32 %43, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %35
  %49 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @DRM_DEV_ERROR(i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %5, align 4
  br label %69

56:                                               ; preds = %35
  %57 = load i32, i32* %9, align 4
  %58 = ashr i32 %57, 8
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %56, %34
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %21

62:                                               ; preds = %21
  %63 = load i32, i32* %8, align 4
  %64 = shl i32 1, %63
  %65 = load %struct.mdp5_smp_state*, %struct.mdp5_smp_state** %7, align 8
  %66 = getelementptr inbounds %struct.mdp5_smp_state, %struct.mdp5_smp_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %62, %48
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.mdp5_kms* @get_kms(%struct.mdp5_smp*) #1

declare dso_local i32 @pipe2nclients(i32) #1

declare dso_local i32 @pipe2client(i32, i32) #1

declare dso_local i32 @DBG(i8*, i32, i32, i32) #1

declare dso_local i32 @pipe2name(i32) #1

declare dso_local i32 @smp_request_block(%struct.mdp5_smp*, %struct.mdp5_smp_state*, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
