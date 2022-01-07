; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_set_colormap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_set_colormap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7511 = type { i32 }

@ADV7511_CSC_UPDATE_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adv7511*, i32, i32*, i32)* @adv7511_set_colormap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adv7511_set_colormap(%struct.adv7511* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.adv7511*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adv7511* %0, %struct.adv7511** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %11 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ADV7511_REG_CSC_UPPER(i32 1)
  %14 = load i32, i32* @ADV7511_CSC_UPDATE_MODE, align 4
  %15 = load i32, i32* @ADV7511_CSC_UPDATE_MODE, align 4
  %16 = call i32 @regmap_update_bits(i32 %12, i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %48, %19
  %21 = load i32, i32* %9, align 4
  %22 = icmp ult i32 %21, 12
  br i1 %22, label %23, label %51

23:                                               ; preds = %20
  %24 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %25 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @ADV7511_REG_CSC_UPPER(i32 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 8
  %35 = call i32 @regmap_update_bits(i32 %26, i32 %28, i32 31, i32 %34)
  %36 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %37 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @ADV7511_REG_CSC_LOWER(i32 %39)
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 255
  %47 = call i32 @regmap_write(i32 %38, i32 %40, i32 %46)
  br label %48

48:                                               ; preds = %23
  %49 = load i32, i32* %9, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %20

51:                                               ; preds = %20
  br label %52

52:                                               ; preds = %51, %4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %57 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ADV7511_REG_CSC_UPPER(i32 0)
  %60 = load i32, i32* %8, align 4
  %61 = shl i32 %60, 5
  %62 = or i32 128, %61
  %63 = call i32 @regmap_update_bits(i32 %58, i32 %59, i32 224, i32 %62)
  br label %70

64:                                               ; preds = %52
  %65 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %66 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ADV7511_REG_CSC_UPPER(i32 0)
  %69 = call i32 @regmap_update_bits(i32 %67, i32 %68, i32 128, i32 0)
  br label %70

70:                                               ; preds = %64, %55
  %71 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %72 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ADV7511_REG_CSC_UPPER(i32 1)
  %75 = load i32, i32* @ADV7511_CSC_UPDATE_MODE, align 4
  %76 = call i32 @regmap_update_bits(i32 %73, i32 %74, i32 %75, i32 0)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ADV7511_REG_CSC_UPPER(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @ADV7511_REG_CSC_LOWER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
