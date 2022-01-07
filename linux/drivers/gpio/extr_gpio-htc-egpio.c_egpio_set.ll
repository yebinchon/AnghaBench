; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-htc-egpio.c_egpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-htc-egpio.c_egpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i64, i32 }
%struct.egpio_chip = type { i32, i32, i32 }
%struct.egpio_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"egpio_set(%s, %d(%d), %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"egpio %s: reg %d = 0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @egpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @egpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.egpio_chip*, align 8
  %9 = alloca %struct.egpio_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %14 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %22 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* %6, align 4
  %27 = call i32 (i8*, i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %18, i32 %25, i32 %26)
  %28 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %29 = call %struct.egpio_chip* @gpiochip_get_data(%struct.gpio_chip* %28)
  store %struct.egpio_chip* %29, %struct.egpio_chip** %8, align 8
  %30 = load %struct.egpio_chip*, %struct.egpio_chip** %8, align 8
  %31 = getelementptr inbounds %struct.egpio_chip, %struct.egpio_chip* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.egpio_info* @dev_get_drvdata(i32 %32)
  store %struct.egpio_info* %33, %struct.egpio_info** %9, align 8
  %34 = load %struct.egpio_info*, %struct.egpio_info** %9, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @egpio_pos(%struct.egpio_info* %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.egpio_chip*, %struct.egpio_chip** %8, align 8
  %38 = getelementptr inbounds %struct.egpio_chip, %struct.egpio_chip* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.egpio_info*, %struct.egpio_info** %9, align 8
  %44 = getelementptr inbounds %struct.egpio_info, %struct.egpio_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %42, %45
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.egpio_chip*, %struct.egpio_chip** %8, align 8
  %53 = getelementptr inbounds %struct.egpio_chip, %struct.egpio_chip* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %12, align 4
  %56 = ashr i32 %54, %55
  %57 = load %struct.egpio_info*, %struct.egpio_info** %9, align 8
  %58 = getelementptr inbounds %struct.egpio_info, %struct.egpio_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %56, %59
  %61 = call i32 (i8*, i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %50, i32 %51, i32 %60)
  %62 = load %struct.egpio_info*, %struct.egpio_info** %9, align 8
  %63 = getelementptr inbounds %struct.egpio_info, %struct.egpio_info* %62, i32 0, i32 2
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %3
  %69 = load i32, i32* %5, align 4
  %70 = shl i32 1, %69
  %71 = load %struct.egpio_chip*, %struct.egpio_chip** %8, align 8
  %72 = getelementptr inbounds %struct.egpio_chip, %struct.egpio_chip* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %83

75:                                               ; preds = %3
  %76 = load i32, i32* %5, align 4
  %77 = shl i32 1, %76
  %78 = xor i32 %77, -1
  %79 = load %struct.egpio_chip*, %struct.egpio_chip** %8, align 8
  %80 = getelementptr inbounds %struct.egpio_chip, %struct.egpio_chip* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %75, %68
  %84 = load %struct.egpio_chip*, %struct.egpio_chip** %8, align 8
  %85 = getelementptr inbounds %struct.egpio_chip, %struct.egpio_chip* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %12, align 4
  %88 = ashr i32 %86, %87
  %89 = load %struct.egpio_info*, %struct.egpio_info** %9, align 8
  %90 = getelementptr inbounds %struct.egpio_info, %struct.egpio_info* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %88, %91
  %93 = load %struct.egpio_info*, %struct.egpio_info** %9, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @egpio_writew(i32 %92, %struct.egpio_info* %93, i32 %94)
  %96 = load %struct.egpio_info*, %struct.egpio_info** %9, align 8
  %97 = getelementptr inbounds %struct.egpio_info, %struct.egpio_info* %96, i32 0, i32 2
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @spin_unlock_irqrestore(i32* %97, i64 %98)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32, ...) #1

declare dso_local %struct.egpio_chip* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local %struct.egpio_info* @dev_get_drvdata(i32) #1

declare dso_local i32 @egpio_pos(%struct.egpio_info*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @egpio_writew(i32, %struct.egpio_info*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
