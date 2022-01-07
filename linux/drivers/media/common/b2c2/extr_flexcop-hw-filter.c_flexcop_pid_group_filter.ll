; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop-hw-filter.c_flexcop_pid_group_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop-hw-filter.c_flexcop_pid_group_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { i32 (%struct.flexcop_device*, i32, i8*, i8*)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@pid_filter_30c = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flexcop_device*, i8*, i8*)* @flexcop_pid_group_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flexcop_pid_group_filter(%struct.flexcop_device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.flexcop_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  store %struct.flexcop_device* %0, %struct.flexcop_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i8* %8, i8** %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %15 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %14, i32 0, i32 0
  %16 = load i32 (%struct.flexcop_device*, i32, i8*, i8*)*, i32 (%struct.flexcop_device*, i32, i8*, i8*)** %15, align 8
  %17 = load %struct.flexcop_device*, %struct.flexcop_device** %4, align 8
  %18 = load i32, i32* @pid_filter_30c, align 4
  %19 = bitcast %struct.TYPE_5__* %7 to { i8*, i8* }*
  %20 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %19, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 %16(%struct.flexcop_device* %17, i32 %18, i8* %21, i8* %23)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
