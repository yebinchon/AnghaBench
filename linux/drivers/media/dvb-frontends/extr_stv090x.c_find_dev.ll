; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_find_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_find_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_dev = type { %struct.stv090x_dev*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }

@stv090x_first_dev = common dso_local global %struct.stv090x_dev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stv090x_dev* (%struct.i2c_adapter*, i64)* @find_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stv090x_dev* @find_dev(%struct.i2c_adapter* %0, i64 %1) #0 {
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.stv090x_dev*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.stv090x_dev*, %struct.stv090x_dev** @stv090x_first_dev, align 8
  store %struct.stv090x_dev* %6, %struct.stv090x_dev** %5, align 8
  br label %7

7:                                                ; preds = %30, %2
  %8 = load %struct.stv090x_dev*, %struct.stv090x_dev** %5, align 8
  %9 = icmp ne %struct.stv090x_dev* %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = load %struct.stv090x_dev*, %struct.stv090x_dev** %5, align 8
  %12 = getelementptr inbounds %struct.stv090x_dev, %struct.stv090x_dev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %14, align 8
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %17 = icmp ne %struct.i2c_adapter* %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %10
  %19 = load %struct.stv090x_dev*, %struct.stv090x_dev** %5, align 8
  %20 = getelementptr inbounds %struct.stv090x_dev, %struct.stv090x_dev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %23, %24
  br label %26

26:                                               ; preds = %18, %10
  %27 = phi i1 [ true, %10 ], [ %25, %18 ]
  br label %28

28:                                               ; preds = %26, %7
  %29 = phi i1 [ false, %7 ], [ %27, %26 ]
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = load %struct.stv090x_dev*, %struct.stv090x_dev** %5, align 8
  %32 = getelementptr inbounds %struct.stv090x_dev, %struct.stv090x_dev* %31, i32 0, i32 0
  %33 = load %struct.stv090x_dev*, %struct.stv090x_dev** %32, align 8
  store %struct.stv090x_dev* %33, %struct.stv090x_dev** %5, align 8
  br label %7

34:                                               ; preds = %28
  %35 = load %struct.stv090x_dev*, %struct.stv090x_dev** %5, align 8
  ret %struct.stv090x_dev* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
