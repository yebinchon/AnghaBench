; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_handler_drm_SKAI1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_handler_drm_SKAI1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*, i32*)* @handler_drm_SKAI1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handler_drm_SKAI1(%struct.wiimote_data* %0, i32* %1) #0 {
  %3 = alloca %struct.wiimote_data*, align 8
  %4 = alloca i32*, align 8
  store %struct.wiimote_data* %0, %struct.wiimote_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @handler_keys(%struct.wiimote_data* %5, i32* %6)
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %12 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 %10, i32* %15, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 1
  %20 = and i32 %19, 48
  %21 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %22 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %20, i32* %25, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 1
  %30 = and i32 %29, 192
  %31 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %32 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %30
  store i32 %37, i32* %35, align 4
  %38 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  %41 = call i32 @ir_to_input0(%struct.wiimote_data* %38, i32* %40, i32 0)
  %42 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 12
  %45 = call i32 @ir_to_input1(%struct.wiimote_data* %42, i32* %44, i32 0)
  ret void
}

declare dso_local i32 @handler_keys(%struct.wiimote_data*, i32*) #1

declare dso_local i32 @ir_to_input0(%struct.wiimote_data*, i32*, i32) #1

declare dso_local i32 @ir_to_input1(%struct.wiimote_data*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
