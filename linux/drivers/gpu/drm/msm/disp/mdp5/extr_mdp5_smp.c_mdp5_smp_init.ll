; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_smp.c_mdp5_smp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_smp.c_mdp5_smp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_smp = type { i32, i32, i32, i32 }
%struct.mdp5_kms = type { i32 }
%struct.mdp5_smp_block = type { i32, i32, i32, i32 }
%struct.mdp5_smp_state = type { i32 }
%struct.mdp5_global_state = type { %struct.mdp5_smp_state }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mdp5_smp* @mdp5_smp_init(%struct.mdp5_kms* %0, %struct.mdp5_smp_block* %1) #0 {
  %3 = alloca %struct.mdp5_smp*, align 8
  %4 = alloca %struct.mdp5_kms*, align 8
  %5 = alloca %struct.mdp5_smp_block*, align 8
  %6 = alloca %struct.mdp5_smp_state*, align 8
  %7 = alloca %struct.mdp5_global_state*, align 8
  %8 = alloca %struct.mdp5_smp*, align 8
  %9 = alloca i32, align 4
  store %struct.mdp5_kms* %0, %struct.mdp5_kms** %4, align 8
  store %struct.mdp5_smp_block* %1, %struct.mdp5_smp_block** %5, align 8
  store %struct.mdp5_smp* null, %struct.mdp5_smp** %8, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.mdp5_smp* @kzalloc(i32 16, i32 %10)
  store %struct.mdp5_smp* %11, %struct.mdp5_smp** %8, align 8
  %12 = load %struct.mdp5_smp*, %struct.mdp5_smp** %8, align 8
  %13 = icmp ne %struct.mdp5_smp* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %9, align 4
  br label %59

21:                                               ; preds = %2
  %22 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %23 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mdp5_smp*, %struct.mdp5_smp** %8, align 8
  %26 = getelementptr inbounds %struct.mdp5_smp, %struct.mdp5_smp* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.mdp5_smp_block*, %struct.mdp5_smp_block** %5, align 8
  %28 = getelementptr inbounds %struct.mdp5_smp_block, %struct.mdp5_smp_block* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mdp5_smp*, %struct.mdp5_smp** %8, align 8
  %31 = getelementptr inbounds %struct.mdp5_smp, %struct.mdp5_smp* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.mdp5_smp_block*, %struct.mdp5_smp_block** %5, align 8
  %33 = getelementptr inbounds %struct.mdp5_smp_block, %struct.mdp5_smp_block* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mdp5_smp*, %struct.mdp5_smp** %8, align 8
  %36 = getelementptr inbounds %struct.mdp5_smp, %struct.mdp5_smp* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mdp5_kms*, %struct.mdp5_kms** %4, align 8
  %38 = call %struct.mdp5_global_state* @mdp5_get_existing_global_state(%struct.mdp5_kms* %37)
  store %struct.mdp5_global_state* %38, %struct.mdp5_global_state** %7, align 8
  %39 = load %struct.mdp5_global_state*, %struct.mdp5_global_state** %7, align 8
  %40 = getelementptr inbounds %struct.mdp5_global_state, %struct.mdp5_global_state* %39, i32 0, i32 0
  store %struct.mdp5_smp_state* %40, %struct.mdp5_smp_state** %6, align 8
  %41 = load %struct.mdp5_smp_state*, %struct.mdp5_smp_state** %6, align 8
  %42 = getelementptr inbounds %struct.mdp5_smp_state, %struct.mdp5_smp_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mdp5_smp_block*, %struct.mdp5_smp_block** %5, align 8
  %45 = getelementptr inbounds %struct.mdp5_smp_block, %struct.mdp5_smp_block* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mdp5_smp*, %struct.mdp5_smp** %8, align 8
  %48 = getelementptr inbounds %struct.mdp5_smp, %struct.mdp5_smp* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bitmap_copy(i32 %43, i32 %46, i32 %49)
  %51 = load %struct.mdp5_smp*, %struct.mdp5_smp** %8, align 8
  %52 = getelementptr inbounds %struct.mdp5_smp, %struct.mdp5_smp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mdp5_smp_block*, %struct.mdp5_smp_block** %5, align 8
  %55 = getelementptr inbounds %struct.mdp5_smp_block, %struct.mdp5_smp_block* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @memcpy(i32 %53, i32 %56, i32 4)
  %58 = load %struct.mdp5_smp*, %struct.mdp5_smp** %8, align 8
  store %struct.mdp5_smp* %58, %struct.mdp5_smp** %3, align 8
  br label %68

59:                                               ; preds = %18
  %60 = load %struct.mdp5_smp*, %struct.mdp5_smp** %8, align 8
  %61 = icmp ne %struct.mdp5_smp* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.mdp5_smp*, %struct.mdp5_smp** %8, align 8
  %64 = call i32 @mdp5_smp_destroy(%struct.mdp5_smp* %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %9, align 4
  %67 = call %struct.mdp5_smp* @ERR_PTR(i32 %66)
  store %struct.mdp5_smp* %67, %struct.mdp5_smp** %3, align 8
  br label %68

68:                                               ; preds = %65, %21
  %69 = load %struct.mdp5_smp*, %struct.mdp5_smp** %3, align 8
  ret %struct.mdp5_smp* %69
}

declare dso_local %struct.mdp5_smp* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.mdp5_global_state* @mdp5_get_existing_global_state(%struct.mdp5_kms*) #1

declare dso_local i32 @bitmap_copy(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mdp5_smp_destroy(%struct.mdp5_smp*) #1

declare dso_local %struct.mdp5_smp* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
