; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_handler_drm_KAIE.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c_handler_drm_KAIE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimote_data*, i32*)* @handler_drm_KAIE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handler_drm_KAIE(%struct.wiimote_data* %0, i32* %1) #0 {
  %3 = alloca %struct.wiimote_data*, align 8
  %4 = alloca i32*, align 8
  store %struct.wiimote_data* %0, %struct.wiimote_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @handler_keys(%struct.wiimote_data* %5, i32* %6)
  %8 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @handler_accel(%struct.wiimote_data* %8, i32* %9)
  %11 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 5
  %14 = call i32 @ir_to_input0(%struct.wiimote_data* %11, i32* %13, i32 0)
  %15 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 7
  %18 = call i32 @ir_to_input1(%struct.wiimote_data* %15, i32* %17, i32 1)
  %19 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 10
  %22 = call i32 @ir_to_input2(%struct.wiimote_data* %19, i32* %21, i32 0)
  %23 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 12
  %26 = call i32 @ir_to_input3(%struct.wiimote_data* %23, i32* %25, i32 1)
  %27 = load %struct.wiimote_data*, %struct.wiimote_data** %3, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 15
  %30 = call i32 @handler_ext(%struct.wiimote_data* %27, i32* %29, i32 6)
  ret void
}

declare dso_local i32 @handler_keys(%struct.wiimote_data*, i32*) #1

declare dso_local i32 @handler_accel(%struct.wiimote_data*, i32*) #1

declare dso_local i32 @ir_to_input0(%struct.wiimote_data*, i32*, i32) #1

declare dso_local i32 @ir_to_input1(%struct.wiimote_data*, i32*, i32) #1

declare dso_local i32 @ir_to_input2(%struct.wiimote_data*, i32*, i32) #1

declare dso_local i32 @ir_to_input3(%struct.wiimote_data*, i32*, i32) #1

declare dso_local i32 @handler_ext(%struct.wiimote_data*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
