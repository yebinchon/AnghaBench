; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dibx000_common.c_i2c_adapter_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dibx000_common.c_i2c_adapter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32*, %struct.i2c_algorithm*, i32 }
%struct.i2c_algorithm = type { i32 }
%struct.dibx000_i2c_master = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_algorithm*, i8*, %struct.dibx000_i2c_master*)* @i2c_adapter_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_adapter_init(%struct.i2c_adapter* %0, %struct.i2c_algorithm* %1, i8* %2, %struct.dibx000_i2c_master* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.i2c_algorithm*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dibx000_i2c_master*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %6, align 8
  store %struct.i2c_algorithm* %1, %struct.i2c_algorithm** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.dibx000_i2c_master* %3, %struct.dibx000_i2c_master** %9, align 8
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @strscpy(i32 %12, i8* %13, i32 4)
  %15 = load %struct.i2c_algorithm*, %struct.i2c_algorithm** %7, align 8
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %16, i32 0, i32 1
  store %struct.i2c_algorithm* %15, %struct.i2c_algorithm** %17, align 8
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %19 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %21 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %9, align 8
  %22 = call i32 @i2c_set_adapdata(%struct.i2c_adapter* %20, %struct.dibx000_i2c_master* %21)
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %24 = call i64 @i2c_add_adapter(%struct.i2c_adapter* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %30

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @i2c_set_adapdata(%struct.i2c_adapter*, %struct.dibx000_i2c_master*) #1

declare dso_local i64 @i2c_add_adapter(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
