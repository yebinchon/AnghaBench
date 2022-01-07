; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mv64xxx.c_mv64xxx_i2c_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv64xxx_i2c_data = type { i32, i32, %struct.TYPE_2__, i64, i64, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@MV64XXX_I2C_REG_CONTROL_IFLG = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mv64xxx_i2c_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv64xxx_i2c_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mv64xxx_i2c_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.mv64xxx_i2c_data*
  store %struct.mv64xxx_i2c_data* %10, %struct.mv64xxx_i2c_data** %5, align 8
  %11 = load i32, i32* @IRQ_NONE, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %5, align 8
  %13 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %12, i32 0, i32 1
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %5, align 8
  %17 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %5, align 8
  %22 = call i32 @mv64xxx_i2c_intr_offload(%struct.mv64xxx_i2c_data* %21)
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %20, %2
  br label %24

24:                                               ; preds = %71, %23
  %25 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %5, align 8
  %26 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %5, align 8
  %29 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %27, %31
  %33 = call i32 @readl(i64 %32)
  %34 = load i32, i32* @MV64XXX_I2C_REG_CONTROL_IFLG, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %73

37:                                               ; preds = %24
  %38 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %5, align 8
  %39 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %5, align 8
  %42 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %40, %44
  %46 = call i32 @readl(i64 %45)
  store i32 %46, i32* %7, align 4
  %47 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @mv64xxx_i2c_fsm(%struct.mv64xxx_i2c_data* %47, i32 %48)
  %50 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %5, align 8
  %51 = call i32 @mv64xxx_i2c_do_action(%struct.mv64xxx_i2c_data* %50)
  %52 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %5, align 8
  %53 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %37
  %57 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %5, align 8
  %58 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @MV64XXX_I2C_REG_CONTROL_IFLG, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %5, align 8
  %63 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %5, align 8
  %66 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %64, %68
  %70 = call i32 @writel(i32 %61, i64 %69)
  br label %71

71:                                               ; preds = %56, %37
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %72, i32* %8, align 4
  br label %24

73:                                               ; preds = %24
  %74 = load %struct.mv64xxx_i2c_data*, %struct.mv64xxx_i2c_data** %5, align 8
  %75 = getelementptr inbounds %struct.mv64xxx_i2c_data, %struct.mv64xxx_i2c_data* %74, i32 0, i32 1
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mv64xxx_i2c_intr_offload(%struct.mv64xxx_i2c_data*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @mv64xxx_i2c_fsm(%struct.mv64xxx_i2c_data*, i32) #1

declare dso_local i32 @mv64xxx_i2c_do_action(%struct.mv64xxx_i2c_data*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
