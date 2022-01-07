; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_handle_common_int_4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_handle_common_int_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anx78xx = type { i32*, i32* }

@.str = private unnamed_addr constant [33 x i8] c"Handle common interrupt 4: %02x\0A\00", align 1
@I2C_IDX_TX_P2 = common dso_local global i64 0, align 8
@SP_COMMON_INT_STATUS4_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to write SP_COMMON_INT_STATUS4 %d\0A\00", align 1
@SP_HPD_LOST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"IRQ: Hot plug detect - cable is pulled out\0A\00", align 1
@SP_HPD_PLUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"IRQ: Hot plug detect - cable plug\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anx78xx*, i32)* @anx78xx_handle_common_int_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anx78xx_handle_common_int_4(%struct.anx78xx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.anx78xx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.anx78xx* %0, %struct.anx78xx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %11 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @I2C_IDX_TX_P2, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SP_COMMON_INT_STATUS4_REG, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @regmap_write(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %50

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SP_HPD_LOST, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25
  %31 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  %32 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %33 = call i32 @anx78xx_poweroff(%struct.anx78xx* %32)
  %34 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %35 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @kfree(i32* %36)
  %38 = load %struct.anx78xx*, %struct.anx78xx** %4, align 8
  %39 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  br label %48

40:                                               ; preds = %25
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @SP_HPD_PLUG, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %40
  br label %48

48:                                               ; preds = %47, %30
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %21
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @anx78xx_poweroff(%struct.anx78xx*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
