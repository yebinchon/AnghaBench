; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_setup_gpios_for_copro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_setup_gpios_for_copro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_acf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"failed to assign clock gpio to coprocessor\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to assign data gpio to coprocessor\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"failed to assign trans gpio to coprocessor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master_acf*)* @setup_gpios_for_copro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_gpios_for_copro(%struct.fsi_master_acf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsi_master_acf*, align 8
  %4 = alloca i32, align 4
  store %struct.fsi_master_acf* %0, %struct.fsi_master_acf** %3, align 8
  %5 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %6 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %5, i32 0, i32 14
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @gpiod_direction_output(i32 %7, i32 1)
  %9 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %10 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %9, i32 0, i32 13
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @gpiod_direction_output(i32 %11, i32 1)
  %13 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %14 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %17 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %16, i32 0, i32 12
  %18 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %19 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %18, i32 0, i32 11
  %20 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %21 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %20, i32 0, i32 10
  %22 = call i32 @aspeed_gpio_copro_grab_gpio(i32 %15, i32* %17, i32* %19, i32* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %27 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %82

31:                                               ; preds = %1
  %32 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %33 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %36 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %35, i32 0, i32 9
  %37 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %38 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %37, i32 0, i32 8
  %39 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %40 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %39, i32 0, i32 7
  %41 = call i32 @aspeed_gpio_copro_grab_gpio(i32 %34, i32* %36, i32* %38, i32* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %31
  %45 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %46 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %50 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @aspeed_gpio_copro_release_gpio(i32 %51)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %82

54:                                               ; preds = %31
  %55 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %56 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %59 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %58, i32 0, i32 5
  %60 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %61 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %60, i32 0, i32 4
  %62 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %63 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %62, i32 0, i32 3
  %64 = call i32 @aspeed_gpio_copro_grab_gpio(i32 %57, i32* %59, i32* %61, i32* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %54
  %68 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %69 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %73 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @aspeed_gpio_copro_release_gpio(i32 %74)
  %76 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %3, align 8
  %77 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @aspeed_gpio_copro_release_gpio(i32 %78)
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %82

81:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %67, %44, %25
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @gpiod_direction_output(i32, i32) #1

declare dso_local i32 @aspeed_gpio_copro_grab_gpio(i32, i32*, i32*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @aspeed_gpio_copro_release_gpio(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
