; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-meson.c_meson_i2c_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-meson.c_meson_i2c_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_i2c = type { i64, i64, i64, i32, i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@REG_CTRL = common dso_local global i64 0, align 8
@REG_CTRL_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"irq: state %d, pos %d, count %d, ctrl %08x\0A\00", align 1
@STATE_IDLE = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@REG_CTRL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"error bit set\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@STATE_READ = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @meson_i2c_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_i2c_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.meson_i2c*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.meson_i2c*
  store %struct.meson_i2c* %9, %struct.meson_i2c** %6, align 8
  %10 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %11 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %10, i32 0, i32 3
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %14 = call i32 @meson_i2c_reset_tokens(%struct.meson_i2c* %13)
  %15 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %16 = load i64, i64* @REG_CTRL, align 8
  %17 = load i32, i32* @REG_CTRL_START, align 4
  %18 = call i32 @meson_i2c_set_mask(%struct.meson_i2c* %15, i64 %16, i32 %17, i32 0)
  %19 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %20 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %19, i32 0, i32 8
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @REG_CTRL, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %26 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %29 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %32 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %35 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i32, i8*, ...) @dev_dbg(i32 %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %33, i64 %36, i32 %37)
  %39 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %40 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @STATE_IDLE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %2
  %45 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %46 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %45, i32 0, i32 3
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load i32, i32* @IRQ_NONE, align 4
  store i32 %48, i32* %3, align 4
  br label %132

49:                                               ; preds = %2
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @REG_CTRL_ERROR, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %56 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @dev_dbg(i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @ENXIO, align 4
  %60 = sub nsw i32 0, %59
  %61 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %62 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load i64, i64* @STATE_IDLE, align 8
  %64 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %65 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %67 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %66, i32 0, i32 4
  %68 = call i32 @complete(i32* %67)
  br label %127

69:                                               ; preds = %49
  %70 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %71 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @STATE_READ, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %95

75:                                               ; preds = %69
  %76 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %77 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %82 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %83 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %82, i32 0, i32 5
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %88 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %92 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @meson_i2c_get_data(%struct.meson_i2c* %81, i64 %90, i64 %93)
  br label %95

95:                                               ; preds = %80, %75, %69
  %96 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %97 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %100 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, %98
  store i64 %102, i64* %100, align 8
  %103 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %104 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %107 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %106, i32 0, i32 5
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp sge i64 %105, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %95
  %113 = load i64, i64* @STATE_IDLE, align 8
  %114 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %115 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %117 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %116, i32 0, i32 4
  %118 = call i32 @complete(i32* %117)
  br label %127

119:                                              ; preds = %95
  %120 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %121 = call i32 @meson_i2c_prepare_xfer(%struct.meson_i2c* %120)
  %122 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %123 = load i64, i64* @REG_CTRL, align 8
  %124 = load i32, i32* @REG_CTRL_START, align 4
  %125 = load i32, i32* @REG_CTRL_START, align 4
  %126 = call i32 @meson_i2c_set_mask(%struct.meson_i2c* %122, i64 %123, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %119, %112, %54
  %128 = load %struct.meson_i2c*, %struct.meson_i2c** %6, align 8
  %129 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %128, i32 0, i32 3
  %130 = call i32 @spin_unlock(i32* %129)
  %131 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %127, %44
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @meson_i2c_reset_tokens(%struct.meson_i2c*) #1

declare dso_local i32 @meson_i2c_set_mask(%struct.meson_i2c*, i64, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @meson_i2c_get_data(%struct.meson_i2c*, i64, i64) #1

declare dso_local i32 @meson_i2c_prepare_xfer(%struct.meson_i2c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
