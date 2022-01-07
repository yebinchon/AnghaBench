; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-meson.c_meson_i2c_prepare_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-meson.c_meson_i2c_prepare_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_i2c = type { i32, i64, i64, i32*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@I2C_M_RD = common dso_local global i32 0, align 4
@TOKEN_DATA = common dso_local global i32 0, align 4
@TOKEN_DATA_LAST = common dso_local global i32 0, align 4
@TOKEN_STOP = common dso_local global i32 0, align 4
@REG_TOK_LIST0 = common dso_local global i64 0, align 8
@REG_TOK_LIST1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_i2c*)* @meson_i2c_prepare_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_i2c_prepare_xfer(%struct.meson_i2c* %0) #0 {
  %2 = alloca %struct.meson_i2c*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.meson_i2c* %0, %struct.meson_i2c** %2, align 8
  %5 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %6 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %5, i32 0, i32 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @I2C_M_RD, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %16 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %21 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  %24 = call i32 @min(i64 %23, i32 8)
  %25 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %26 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %38, %1
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %30 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %31, 1
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %36 = load i32, i32* @TOKEN_DATA, align 4
  %37 = call i32 @meson_i2c_add_token(%struct.meson_i2c* %35, i32 %36)
  br label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %27

41:                                               ; preds = %27
  %42 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %43 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %41
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %46
  %50 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %51 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %54 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %52, %56
  %58 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %59 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %58, i32 0, i32 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %57, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %49, %46
  %65 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %66 = load i32, i32* @TOKEN_DATA, align 4
  %67 = call i32 @meson_i2c_add_token(%struct.meson_i2c* %65, i32 %66)
  br label %72

68:                                               ; preds = %49
  %69 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %70 = load i32, i32* @TOKEN_DATA_LAST, align 4
  %71 = call i32 @meson_i2c_add_token(%struct.meson_i2c* %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %64
  br label %73

73:                                               ; preds = %72, %41
  %74 = load i32, i32* %3, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %73
  %77 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %78 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %79 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %78, i32 0, i32 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %84 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %82, %85
  %87 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %88 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @meson_i2c_put_data(%struct.meson_i2c* %77, i64 %86, i32 %89)
  br label %91

91:                                               ; preds = %76, %73
  %92 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %93 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %115

96:                                               ; preds = %91
  %97 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %98 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %101 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %99, %103
  %105 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %106 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %105, i32 0, i32 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp sge i64 %104, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %96
  %112 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %113 = load i32, i32* @TOKEN_STOP, align 4
  %114 = call i32 @meson_i2c_add_token(%struct.meson_i2c* %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %96, %91
  %116 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %117 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %122 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @REG_TOK_LIST0, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @writel(i32 %120, i64 %125)
  %127 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %128 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.meson_i2c*, %struct.meson_i2c** %2, align 8
  %133 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @REG_TOK_LIST1, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @writel(i32 %131, i64 %136)
  ret void
}

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @meson_i2c_add_token(%struct.meson_i2c*, i32) #1

declare dso_local i32 @meson_i2c_put_data(%struct.meson_i2c*, i64, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
