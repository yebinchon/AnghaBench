; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_allocate_inputs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_allocate_inputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { %struct.wacom_wac }
%struct.wacom_wac = type { i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__*, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wacom*)* @wacom_allocate_inputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_allocate_inputs(%struct.wacom* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wacom*, align 8
  %4 = alloca %struct.wacom_wac*, align 8
  store %struct.wacom* %0, %struct.wacom** %3, align 8
  %5 = load %struct.wacom*, %struct.wacom** %3, align 8
  %6 = getelementptr inbounds %struct.wacom, %struct.wacom* %5, i32 0, i32 0
  store %struct.wacom_wac* %6, %struct.wacom_wac** %4, align 8
  %7 = load %struct.wacom*, %struct.wacom** %3, align 8
  %8 = call i8* @wacom_allocate_input(%struct.wacom* %7)
  %9 = bitcast i8* %8 to %struct.TYPE_6__*
  %10 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %11 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %10, i32 0, i32 5
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %11, align 8
  %12 = load %struct.wacom*, %struct.wacom** %3, align 8
  %13 = call i8* @wacom_allocate_input(%struct.wacom* %12)
  %14 = bitcast i8* %13 to %struct.TYPE_4__*
  %15 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %16 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %15, i32 0, i32 3
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %16, align 8
  %17 = load %struct.wacom*, %struct.wacom** %3, align 8
  %18 = call i8* @wacom_allocate_input(%struct.wacom* %17)
  %19 = bitcast i8* %18 to %struct.TYPE_5__*
  %20 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %21 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %20, i32 0, i32 1
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %21, align 8
  %22 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %23 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %22, i32 0, i32 5
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %28 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = icmp ne %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %33 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = icmp ne %struct.TYPE_5__* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31, %26, %1
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %61

39:                                               ; preds = %31
  %40 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %41 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %44 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %43, i32 0, i32 5
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  %47 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %48 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %51 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %50, i32 0, i32 3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  %54 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %55 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.wacom_wac*, %struct.wacom_wac** %4, align 8
  %58 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 4
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %39, %36
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i8* @wacom_allocate_input(%struct.wacom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
