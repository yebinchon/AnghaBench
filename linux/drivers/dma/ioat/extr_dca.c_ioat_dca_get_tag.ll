; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_dca.c_ioat_dca_get_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_dca.c_ioat_dca_get_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dca_provider = type { i32 }
%struct.device = type { i32 }
%struct.ioat_dca_priv = type { i32* }

@IOAT_TAG_MAP_LEN = common dso_local global i32 0, align 4
@DCA3_TAG_MAP_BIT_TO_SEL = common dso_local global i32 0, align 4
@DCA3_TAG_MAP_BIT_TO_INV = common dso_local global i32 0, align 4
@DCA3_TAG_MAP_LITERAL_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dca_provider*, %struct.device*, i32)* @ioat_dca_get_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioat_dca_get_tag(%struct.dca_provider* %0, %struct.device* %1, i32 %2) #0 {
  %4 = alloca %struct.dca_provider*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ioat_dca_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dca_provider* %0, %struct.dca_provider** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.dca_provider*, %struct.dca_provider** %4, align 8
  %15 = call %struct.ioat_dca_priv* @dca_priv(%struct.dca_provider* %14)
  store %struct.ioat_dca_priv* %15, %struct.ioat_dca_priv** %8, align 8
  store i32 0, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @cpu_physical_id(i32 %16)
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %79, %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @IOAT_TAG_MAP_LEN, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %82

22:                                               ; preds = %18
  %23 = load %struct.ioat_dca_priv*, %struct.ioat_dca_priv** %8, align 8
  %24 = getelementptr inbounds %struct.ioat_dca_priv, %struct.ioat_dca_priv* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @DCA3_TAG_MAP_BIT_TO_SEL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %22
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @DCA3_TAG_MAP_BIT_TO_SEL, align 4
  %37 = load i32, i32* @DCA3_TAG_MAP_BIT_TO_INV, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = and i32 %35, %39
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = shl i32 1, %42
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 1, i32 0
  store i32 %47, i32* %12, align 4
  br label %73

48:                                               ; preds = %22
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @DCA3_TAG_MAP_BIT_TO_INV, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @DCA3_TAG_MAP_BIT_TO_INV, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = shl i32 1, %59
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 0, i32 1
  store i32 %64, i32* %12, align 4
  br label %72

65:                                               ; preds = %48
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @DCA3_TAG_MAP_LITERAL_VAL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 1, i32 0
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %65, %53
  br label %73

73:                                               ; preds = %72, %34
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %9, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %18

82:                                               ; preds = %18
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local %struct.ioat_dca_priv* @dca_priv(%struct.dca_provider*) #1

declare dso_local i32 @cpu_physical_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
