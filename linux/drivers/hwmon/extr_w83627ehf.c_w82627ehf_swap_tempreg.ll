; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_w82627ehf_swap_tempreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_w82627ehf_swap_tempreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83627ehf_data = type { i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w83627ehf_data*, i32, i32)* @w82627ehf_swap_tempreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w82627ehf_swap_tempreg(%struct.w83627ehf_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.w83627ehf_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.w83627ehf_data* %0, %struct.w83627ehf_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %8 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %15 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @swap(i32 %13, i32 %20)
  %22 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %23 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %30 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @swap(i32 %28, i32 %35)
  %37 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %38 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %45 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @swap(i32 %43, i32 %50)
  %52 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %53 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %60 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @swap(i32 %58, i32 %65)
  %67 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %68 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %75 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @swap(i32 %73, i32 %80)
  ret void
}

declare dso_local i32 @swap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
