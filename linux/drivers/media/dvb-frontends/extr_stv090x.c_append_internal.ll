; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_append_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv090x.c_append_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv090x_dev = type { %struct.stv090x_dev*, %struct.stv090x_internal* }
%struct.stv090x_internal = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@stv090x_first_dev = common dso_local global %struct.stv090x_dev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stv090x_dev* (%struct.stv090x_internal*)* @append_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stv090x_dev* @append_internal(%struct.stv090x_internal* %0) #0 {
  %2 = alloca %struct.stv090x_internal*, align 8
  %3 = alloca %struct.stv090x_dev*, align 8
  %4 = alloca %struct.stv090x_dev*, align 8
  store %struct.stv090x_internal* %0, %struct.stv090x_internal** %2, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.stv090x_dev* @kmalloc(i32 16, i32 %5)
  store %struct.stv090x_dev* %6, %struct.stv090x_dev** %3, align 8
  %7 = load %struct.stv090x_dev*, %struct.stv090x_dev** %3, align 8
  %8 = icmp ne %struct.stv090x_dev* %7, null
  br i1 %8, label %9, label %35

9:                                                ; preds = %1
  %10 = load %struct.stv090x_internal*, %struct.stv090x_internal** %2, align 8
  %11 = load %struct.stv090x_dev*, %struct.stv090x_dev** %3, align 8
  %12 = getelementptr inbounds %struct.stv090x_dev, %struct.stv090x_dev* %11, i32 0, i32 1
  store %struct.stv090x_internal* %10, %struct.stv090x_internal** %12, align 8
  %13 = load %struct.stv090x_dev*, %struct.stv090x_dev** %3, align 8
  %14 = getelementptr inbounds %struct.stv090x_dev, %struct.stv090x_dev* %13, i32 0, i32 0
  store %struct.stv090x_dev* null, %struct.stv090x_dev** %14, align 8
  %15 = load %struct.stv090x_dev*, %struct.stv090x_dev** @stv090x_first_dev, align 8
  %16 = icmp eq %struct.stv090x_dev* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = load %struct.stv090x_dev*, %struct.stv090x_dev** %3, align 8
  store %struct.stv090x_dev* %18, %struct.stv090x_dev** @stv090x_first_dev, align 8
  br label %34

19:                                               ; preds = %9
  %20 = load %struct.stv090x_dev*, %struct.stv090x_dev** @stv090x_first_dev, align 8
  store %struct.stv090x_dev* %20, %struct.stv090x_dev** %4, align 8
  br label %21

21:                                               ; preds = %26, %19
  %22 = load %struct.stv090x_dev*, %struct.stv090x_dev** %4, align 8
  %23 = getelementptr inbounds %struct.stv090x_dev, %struct.stv090x_dev* %22, i32 0, i32 0
  %24 = load %struct.stv090x_dev*, %struct.stv090x_dev** %23, align 8
  %25 = icmp ne %struct.stv090x_dev* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.stv090x_dev*, %struct.stv090x_dev** %4, align 8
  %28 = getelementptr inbounds %struct.stv090x_dev, %struct.stv090x_dev* %27, i32 0, i32 0
  %29 = load %struct.stv090x_dev*, %struct.stv090x_dev** %28, align 8
  store %struct.stv090x_dev* %29, %struct.stv090x_dev** %4, align 8
  br label %21

30:                                               ; preds = %21
  %31 = load %struct.stv090x_dev*, %struct.stv090x_dev** %3, align 8
  %32 = load %struct.stv090x_dev*, %struct.stv090x_dev** %4, align 8
  %33 = getelementptr inbounds %struct.stv090x_dev, %struct.stv090x_dev* %32, i32 0, i32 0
  store %struct.stv090x_dev* %31, %struct.stv090x_dev** %33, align 8
  br label %34

34:                                               ; preds = %30, %17
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.stv090x_dev*, %struct.stv090x_dev** %3, align 8
  ret %struct.stv090x_dev* %36
}

declare dso_local %struct.stv090x_dev* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
