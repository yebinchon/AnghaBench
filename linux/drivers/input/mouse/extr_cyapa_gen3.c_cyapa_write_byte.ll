; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen3.c_cyapa_write_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen3.c_cyapa_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.cyapa = type { i32, i64 }

@cyapa_smbus_cmds = common dso_local global %struct.TYPE_3__* null, align 8
@SMBUS_WRITE = common dso_local global i32 0, align 4
@cyapa_i2c_cmds = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i64, i64)* @cyapa_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_write_byte(%struct.cyapa* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.cyapa*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.cyapa* %0, %struct.cyapa** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %9 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cyapa_smbus_cmds, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* @SMBUS_WRITE, align 4
  %20 = call i64 @SMBUS_ENCODE_RW(i64 %18, i32 %19)
  store i64 %20, i64* %7, align 8
  br label %27

21:                                               ; preds = %3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cyapa_i2c_cmds, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %21, %12
  %28 = load %struct.cyapa*, %struct.cyapa** %4, align 8
  %29 = getelementptr inbounds %struct.cyapa, %struct.cyapa* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @i2c_smbus_write_byte_data(i32 %30, i64 %31, i64 %32)
  ret i32 %33
}

declare dso_local i64 @SMBUS_ENCODE_RW(i64, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
