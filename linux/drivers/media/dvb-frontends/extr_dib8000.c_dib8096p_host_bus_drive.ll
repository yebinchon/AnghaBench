; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8096p_host_bus_drive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8096p_host_bus_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib8000_state*, i32)* @dib8096p_host_bus_drive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib8096p_host_bus_drive(%struct.dib8000_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib8000_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %6, 7
  store i32 %7, i32* %4, align 4
  %8 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %9 = call i32 @dib8000_read_word(%struct.dib8000_state* %8, i32 1798)
  %10 = and i32 %9, -29128
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = shl i32 %11, 12
  %13 = load i32, i32* %4, align 4
  %14 = shl i32 %13, 6
  %15 = or i32 %12, %14
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dib8000_write_word(%struct.dib8000_state* %20, i32 1798, i32 %21)
  %23 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %24 = call i32 @dib8000_read_word(%struct.dib8000_state* %23, i32 1799)
  %25 = and i32 %24, -1821
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = shl i32 %26, 8
  %28 = load i32, i32* %4, align 4
  %29 = shl i32 %28, 2
  %30 = or i32 %27, %29
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @dib8000_write_word(%struct.dib8000_state* %33, i32 1799, i32 %34)
  %36 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %37 = call i32 @dib8000_read_word(%struct.dib8000_state* %36, i32 1800)
  %38 = and i32 %37, -29128
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = shl i32 %39, 12
  %41 = load i32, i32* %4, align 4
  %42 = shl i32 %41, 6
  %43 = or i32 %40, %42
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @dib8000_write_word(%struct.dib8000_state* %48, i32 1800, i32 %49)
  %51 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %52 = call i32 @dib8000_read_word(%struct.dib8000_state* %51, i32 1801)
  %53 = and i32 %52, -1821
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %4, align 4
  %55 = shl i32 %54, 8
  %56 = load i32, i32* %4, align 4
  %57 = shl i32 %56, 2
  %58 = or i32 %55, %57
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @dib8000_write_word(%struct.dib8000_state* %61, i32 1801, i32 %62)
  %64 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %65 = call i32 @dib8000_read_word(%struct.dib8000_state* %64, i32 1802)
  %66 = and i32 %65, -29128
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %4, align 4
  %68 = shl i32 %67, 12
  %69 = load i32, i32* %4, align 4
  %70 = shl i32 %69, 6
  %71 = or i32 %68, %70
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load %struct.dib8000_state*, %struct.dib8000_state** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @dib8000_write_word(%struct.dib8000_state* %76, i32 1802, i32 %77)
  ret void
}

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
