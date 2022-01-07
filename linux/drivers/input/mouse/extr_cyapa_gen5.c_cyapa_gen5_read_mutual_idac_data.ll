; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_gen5_read_mutual_idac_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen5.c_cyapa_gen5_read_mutual_idac_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32 }

@PIP_RETRIEVE_DATA_STRUCTURE = common dso_local global i32 0, align 4
@GEN5_RETRIEVE_MUTUAL_PWC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i32*, i32*, i32*, i32*, i32*, i32*)* @cyapa_gen5_read_mutual_idac_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_gen5_read_mutual_idac_data(%struct.cyapa* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cyapa*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load i32*, i32** %12, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** %11, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %10, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** %15, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %14, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32*, i32** %13, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %16, align 4
  %24 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %25 = load i32, i32* @PIP_RETRIEVE_DATA_STRUCTURE, align 4
  %26 = load i32, i32* @GEN5_RETRIEVE_MUTUAL_PWC_DATA, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @cyapa_gen5_read_idac_data(%struct.cyapa* %24, i32 %25, i32 %26, i32* %16, i32* %27, i32* %28, i32* %29)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %7
  %34 = load i32, i32* %17, align 4
  store i32 %34, i32* %8, align 4
  br label %44

35:                                               ; preds = %7
  %36 = load %struct.cyapa*, %struct.cyapa** %9, align 8
  %37 = load i32, i32* @PIP_RETRIEVE_DATA_STRUCTURE, align 4
  %38 = load i32, i32* @GEN5_RETRIEVE_MUTUAL_PWC_DATA, align 4
  %39 = load i32*, i32** %13, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = call i32 @cyapa_gen5_read_idac_data(%struct.cyapa* %36, i32 %37, i32 %38, i32* %16, i32* %39, i32* %40, i32* %41)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %35, %33
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local i32 @cyapa_gen5_read_idac_data(%struct.cyapa*, i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
