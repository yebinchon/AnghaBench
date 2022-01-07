; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_get_hw_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_get_hw_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_cryp = type { i32 }

@CR_AES_ECB = common dso_local global i32 0, align 4
@CR_AES_CBC = common dso_local global i32 0, align 4
@CR_AES_CTR = common dso_local global i32 0, align 4
@CR_AES_GCM = common dso_local global i32 0, align 4
@CR_AES_CCM = common dso_local global i32 0, align 4
@CR_DES_ECB = common dso_local global i32 0, align 4
@CR_DES_CBC = common dso_local global i32 0, align 4
@CR_TDES_ECB = common dso_local global i32 0, align 4
@CR_TDES_CBC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Unknown mode\0A\00", align 1
@CR_AES_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_cryp*)* @stm32_cryp_get_hw_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_cryp_get_hw_mode(%struct.stm32_cryp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_cryp*, align 8
  store %struct.stm32_cryp* %0, %struct.stm32_cryp** %3, align 8
  %4 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %5 = call i64 @is_aes(%struct.stm32_cryp* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %9 = call i64 @is_ecb(%struct.stm32_cryp* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load i32, i32* @CR_AES_ECB, align 4
  store i32 %12, i32* %2, align 4
  br label %99

13:                                               ; preds = %7, %1
  %14 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %15 = call i64 @is_aes(%struct.stm32_cryp* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %19 = call i64 @is_cbc(%struct.stm32_cryp* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @CR_AES_CBC, align 4
  store i32 %22, i32* %2, align 4
  br label %99

23:                                               ; preds = %17, %13
  %24 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %25 = call i64 @is_aes(%struct.stm32_cryp* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %29 = call i64 @is_ctr(%struct.stm32_cryp* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @CR_AES_CTR, align 4
  store i32 %32, i32* %2, align 4
  br label %99

33:                                               ; preds = %27, %23
  %34 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %35 = call i64 @is_aes(%struct.stm32_cryp* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %39 = call i64 @is_gcm(%struct.stm32_cryp* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @CR_AES_GCM, align 4
  store i32 %42, i32* %2, align 4
  br label %99

43:                                               ; preds = %37, %33
  %44 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %45 = call i64 @is_aes(%struct.stm32_cryp* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %49 = call i64 @is_ccm(%struct.stm32_cryp* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @CR_AES_CCM, align 4
  store i32 %52, i32* %2, align 4
  br label %99

53:                                               ; preds = %47, %43
  %54 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %55 = call i64 @is_des(%struct.stm32_cryp* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %59 = call i64 @is_ecb(%struct.stm32_cryp* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* @CR_DES_ECB, align 4
  store i32 %62, i32* %2, align 4
  br label %99

63:                                               ; preds = %57, %53
  %64 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %65 = call i64 @is_des(%struct.stm32_cryp* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %69 = call i64 @is_cbc(%struct.stm32_cryp* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @CR_DES_CBC, align 4
  store i32 %72, i32* %2, align 4
  br label %99

73:                                               ; preds = %67, %63
  %74 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %75 = call i64 @is_tdes(%struct.stm32_cryp* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %79 = call i64 @is_ecb(%struct.stm32_cryp* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @CR_TDES_ECB, align 4
  store i32 %82, i32* %2, align 4
  br label %99

83:                                               ; preds = %77, %73
  %84 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %85 = call i64 @is_tdes(%struct.stm32_cryp* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %89 = call i64 @is_cbc(%struct.stm32_cryp* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* @CR_TDES_CBC, align 4
  store i32 %92, i32* %2, align 4
  br label %99

93:                                               ; preds = %87, %83
  %94 = load %struct.stm32_cryp*, %struct.stm32_cryp** %3, align 8
  %95 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dev_err(i32 %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %98 = load i32, i32* @CR_AES_UNKNOWN, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %93, %91, %81, %71, %61, %51, %41, %31, %21, %11
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i64 @is_aes(%struct.stm32_cryp*) #1

declare dso_local i64 @is_ecb(%struct.stm32_cryp*) #1

declare dso_local i64 @is_cbc(%struct.stm32_cryp*) #1

declare dso_local i64 @is_ctr(%struct.stm32_cryp*) #1

declare dso_local i64 @is_gcm(%struct.stm32_cryp*) #1

declare dso_local i64 @is_ccm(%struct.stm32_cryp*) #1

declare dso_local i64 @is_des(%struct.stm32_cryp*) #1

declare dso_local i64 @is_tdes(%struct.stm32_cryp*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
