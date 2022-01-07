; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_format_caps.c_komeda_format_mod_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_format_caps.c_komeda_format_mod_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_format_caps_table = type { i32 (%struct.komeda_format_caps*, i32, i32, i32)* }
%struct.komeda_format_caps = type opaque
%struct.komeda_format_caps.0 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @komeda_format_mod_supported(%struct.komeda_format_caps_table* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.komeda_format_caps_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.komeda_format_caps.0*, align 8
  store %struct.komeda_format_caps_table* %0, %struct.komeda_format_caps_table** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.komeda_format_caps_table*, %struct.komeda_format_caps_table** %7, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call %struct.komeda_format_caps.0* @komeda_get_format_caps(%struct.komeda_format_caps_table* %13, i32 %14, i32 %15)
  store %struct.komeda_format_caps.0* %16, %struct.komeda_format_caps.0** %12, align 8
  %17 = load %struct.komeda_format_caps.0*, %struct.komeda_format_caps.0** %12, align 8
  %18 = icmp ne %struct.komeda_format_caps.0* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %44

20:                                               ; preds = %5
  %21 = load %struct.komeda_format_caps.0*, %struct.komeda_format_caps.0** %12, align 8
  %22 = getelementptr inbounds %struct.komeda_format_caps.0, %struct.komeda_format_caps.0* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %44

28:                                               ; preds = %20
  %29 = load %struct.komeda_format_caps_table*, %struct.komeda_format_caps_table** %7, align 8
  %30 = getelementptr inbounds %struct.komeda_format_caps_table, %struct.komeda_format_caps_table* %29, i32 0, i32 0
  %31 = load i32 (%struct.komeda_format_caps*, i32, i32, i32)*, i32 (%struct.komeda_format_caps*, i32, i32, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.komeda_format_caps*, i32, i32, i32)* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.komeda_format_caps_table*, %struct.komeda_format_caps_table** %7, align 8
  %35 = getelementptr inbounds %struct.komeda_format_caps_table, %struct.komeda_format_caps_table* %34, i32 0, i32 0
  %36 = load i32 (%struct.komeda_format_caps*, i32, i32, i32)*, i32 (%struct.komeda_format_caps*, i32, i32, i32)** %35, align 8
  %37 = load %struct.komeda_format_caps.0*, %struct.komeda_format_caps.0** %12, align 8
  %38 = bitcast %struct.komeda_format_caps.0* %37 to %struct.komeda_format_caps*
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 %36(%struct.komeda_format_caps* %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %6, align 4
  br label %44

43:                                               ; preds = %28
  store i32 1, i32* %6, align 4
  br label %44

44:                                               ; preds = %43, %33, %27, %19
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local %struct.komeda_format_caps.0* @komeda_get_format_caps(%struct.komeda_format_caps_table*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
