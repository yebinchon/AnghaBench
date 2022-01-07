; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_irq_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/stm32/extr_stm32-cryp.c_stm32_cryp_irq_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_cryp = type { i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"No more data to process\0A\00", align 1
@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@CR_AES_GCM = common dso_local global i64 0, align 8
@CR_AES_CCM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stm32_cryp*)* @stm32_cryp_irq_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_cryp_irq_write_data(%struct.stm32_cryp* %0) #0 {
  %2 = alloca %struct.stm32_cryp*, align 8
  store %struct.stm32_cryp* %0, %struct.stm32_cryp** %2, align 8
  %3 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %4 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %13 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dev_warn(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %98

16:                                               ; preds = %1
  %17 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %18 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %24 = call i64 @stm32_cryp_get_hw_mode(%struct.stm32_cryp* %23)
  %25 = load i64, i64* @CR_AES_GCM, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %29 = call i64 @is_encrypt(%struct.stm32_cryp* %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %27, %22, %16
  %32 = phi i1 [ false, %22 ], [ false, %16 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %38 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  call void @stm32_cryp_irq_write_gcm_padded_data(%struct.stm32_cryp* %44)
  br label %98

45:                                               ; preds = %36
  %46 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %47 = call i32 @stm32_cryp_irq_set_npblb(%struct.stm32_cryp* %46)
  br label %48

48:                                               ; preds = %45, %31
  %49 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %50 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %53 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  %56 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %48
  %59 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %60 = call i64 @stm32_cryp_get_hw_mode(%struct.stm32_cryp* %59)
  %61 = load i64, i64* @CR_AES_CCM, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %65 = call i64 @is_decrypt(%struct.stm32_cryp* %64)
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %63, %58, %48
  %68 = phi i1 [ false, %58 ], [ false, %48 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = call i64 @unlikely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %74 = getelementptr inbounds %struct.stm32_cryp, %struct.stm32_cryp* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  call void @stm32_cryp_irq_write_ccm_padded_data(%struct.stm32_cryp* %80)
  br label %98

81:                                               ; preds = %72
  %82 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %83 = call i32 @stm32_cryp_irq_set_npblb(%struct.stm32_cryp* %82)
  br label %84

84:                                               ; preds = %81, %67
  %85 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %86 = call i64 @is_aes(%struct.stm32_cryp* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %90 = call i64 @is_ctr(%struct.stm32_cryp* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %94 = call i32 @stm32_cryp_check_ctr_counter(%struct.stm32_cryp* %93)
  br label %95

95:                                               ; preds = %92, %88, %84
  %96 = load %struct.stm32_cryp*, %struct.stm32_cryp** %2, align 8
  %97 = call i32 @stm32_cryp_irq_write_block(%struct.stm32_cryp* %96)
  br label %98

98:                                               ; preds = %95, %79, %43, %11
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i64 @stm32_cryp_get_hw_mode(%struct.stm32_cryp*) #1

declare dso_local i64 @is_encrypt(%struct.stm32_cryp*) #1

declare dso_local void @stm32_cryp_irq_write_gcm_padded_data(%struct.stm32_cryp*) #1

declare dso_local i32 @stm32_cryp_irq_set_npblb(%struct.stm32_cryp*) #1

declare dso_local i64 @is_decrypt(%struct.stm32_cryp*) #1

declare dso_local void @stm32_cryp_irq_write_ccm_padded_data(%struct.stm32_cryp*) #1

declare dso_local i64 @is_aes(%struct.stm32_cryp*) #1

declare dso_local i64 @is_ctr(%struct.stm32_cryp*) #1

declare dso_local i32 @stm32_cryp_check_ctr_counter(%struct.stm32_cryp*) #1

declare dso_local i32 @stm32_cryp_irq_write_block(%struct.stm32_cryp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
