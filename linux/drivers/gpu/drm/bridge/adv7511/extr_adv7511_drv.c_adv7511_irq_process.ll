; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_irq_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_irq_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7511 = type { i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@ADV7511_INT0_HPD = common dso_local global i32 0, align 4
@ADV7511_INT0_EDID_READY = common dso_local global i32 0, align 4
@ADV7511_INT1_DDC_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv7511*, i32)* @adv7511_irq_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7511_irq_process(%struct.adv7511* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adv7511*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adv7511* %0, %struct.adv7511** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %10 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @ADV7511_REG_INT(i32 0)
  %13 = call i32 @regmap_read(i32 %11, i32 %12, i32* %6)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %83

18:                                               ; preds = %2
  %19 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %20 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ADV7511_REG_INT(i32 1)
  %23 = call i32 @regmap_read(i32 %21, i32 %22, i32* %7)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %83

28:                                               ; preds = %18
  %29 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %30 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ADV7511_REG_INT(i32 0)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @regmap_write(i32 %31, i32 %32, i32 %33)
  %35 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %36 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ADV7511_REG_INT(i32 1)
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @regmap_write(i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %28
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @ADV7511_INT0_HPD, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %50 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %56 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %55, i32 0, i32 3
  %57 = call i32 @schedule_work(i32* %56)
  br label %58

58:                                               ; preds = %54, %48, %43, %28
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @ADV7511_INT0_EDID_READY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @ADV7511_INT1_DDC_ERROR, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %63, %58
  %69 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %70 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %72 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load %struct.adv7511*, %struct.adv7511** %4, align 8
  %79 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %78, i32 0, i32 1
  %80 = call i32 @wake_up_all(i32* %79)
  br label %81

81:                                               ; preds = %77, %68
  br label %82

82:                                               ; preds = %81, %63
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %26, %16
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @ADV7511_REG_INT(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
