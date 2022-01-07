; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-macii.c_macii_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-macii.c_macii_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_request = type { i32* }

@current_req = common dso_local global %struct.adb_request* null, align 8
@command_byte = common dso_local global i32 0, align 4
@SR_OUT = common dso_local global i32 0, align 4
@via = common dso_local global i32* null, align 8
@ACR = common dso_local global i64 0, align 8
@SR = common dso_local global i64 0, align 8
@B = common dso_local global i64 0, align 8
@ST_MASK = common dso_local global i32 0, align 4
@ST_CMD = common dso_local global i32 0, align 4
@sending = common dso_local global i32 0, align 4
@macii_state = common dso_local global i32 0, align 4
@data_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @macii_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macii_start() #0 {
  %1 = alloca %struct.adb_request*, align 8
  %2 = load %struct.adb_request*, %struct.adb_request** @current_req, align 8
  store %struct.adb_request* %2, %struct.adb_request** %1, align 8
  %3 = load %struct.adb_request*, %struct.adb_request** %1, align 8
  %4 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 1
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* @command_byte, align 4
  %8 = load i32, i32* @SR_OUT, align 4
  %9 = load i32*, i32** @via, align 8
  %10 = load i64, i64* @ACR, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %8
  store i32 %13, i32* %11, align 4
  %14 = load %struct.adb_request*, %struct.adb_request** %1, align 8
  %15 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** @via, align 8
  %20 = load i64, i64* @SR, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32 %18, i32* %21, align 4
  %22 = load i32*, i32** @via, align 8
  %23 = load i64, i64* @B, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ST_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = load i32, i32* @ST_CMD, align 4
  %30 = or i32 %28, %29
  %31 = load i32*, i32** @via, align 8
  %32 = load i64, i64* @B, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @sending, align 4
  store i32 %34, i32* @macii_state, align 4
  store i32 2, i32* @data_index, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
