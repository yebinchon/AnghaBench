; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-pca954x.c_pca954x_irq_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/muxes/extr_i2c-mux-pca954x.c_pca954x_irq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_mux_core = type { i32 }
%struct.pca954x = type { i32, %struct.TYPE_3__*, i32, %struct.i2c_client* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.i2c_client = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@irq_domain_simple_ops = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed irq create map\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@pca954x_irq_chip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_mux_core*)* @pca954x_irq_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca954x_irq_setup(%struct.i2c_mux_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_mux_core*, align 8
  %4 = alloca %struct.pca954x*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_mux_core* %0, %struct.i2c_mux_core** %3, align 8
  %8 = load %struct.i2c_mux_core*, %struct.i2c_mux_core** %3, align 8
  %9 = call %struct.pca954x* @i2c_mux_priv(%struct.i2c_mux_core* %8)
  store %struct.pca954x* %9, %struct.pca954x** %4, align 8
  %10 = load %struct.pca954x*, %struct.pca954x** %4, align 8
  %11 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %10, i32 0, i32 3
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %5, align 8
  %13 = load %struct.pca954x*, %struct.pca954x** %4, align 8
  %14 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %1
  store i32 0, i32* %2, align 4
  br label %83

25:                                               ; preds = %19
  %26 = load %struct.pca954x*, %struct.pca954x** %4, align 8
  %27 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %26, i32 0, i32 2
  %28 = call i32 @raw_spin_lock_init(i32* %27)
  %29 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.pca954x*, %struct.pca954x** %4, align 8
  %34 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pca954x*, %struct.pca954x** %4, align 8
  %39 = call i32 @irq_domain_add_linear(i32 %32, i32 %37, i32* @irq_domain_simple_ops, %struct.pca954x* %38)
  %40 = load %struct.pca954x*, %struct.pca954x** %4, align 8
  %41 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.pca954x*, %struct.pca954x** %4, align 8
  %43 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %25
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %83

49:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %79, %49
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.pca954x*, %struct.pca954x** %4, align 8
  %53 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %52, i32 0, i32 1
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %51, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %50
  %59 = load %struct.pca954x*, %struct.pca954x** %4, align 8
  %60 = getelementptr inbounds %struct.pca954x, %struct.pca954x* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @irq_create_mapping(i32 %61, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %58
  %67 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 1
  %69 = call i32 @dev_err(%struct.TYPE_4__* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %83

72:                                               ; preds = %58
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.pca954x*, %struct.pca954x** %4, align 8
  %75 = call i32 @irq_set_chip_data(i32 %73, %struct.pca954x* %74)
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @handle_simple_irq, align 4
  %78 = call i32 @irq_set_chip_and_handler(i32 %76, i32* @pca954x_irq_chip, i32 %77)
  br label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %50

82:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %66, %46, %24
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.pca954x* @i2c_mux_priv(%struct.i2c_mux_core*) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @irq_domain_add_linear(i32, i32, i32*, %struct.pca954x*) #1

declare dso_local i32 @irq_create_mapping(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @irq_set_chip_data(i32, %struct.pca954x*) #1

declare dso_local i32 @irq_set_chip_and_handler(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
