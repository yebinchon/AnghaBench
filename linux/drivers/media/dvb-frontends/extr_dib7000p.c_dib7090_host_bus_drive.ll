; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7090_host_bus_drive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7090_host_bus_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000p_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dib7000p_state*, i32)* @dib7090_host_bus_drive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib7090_host_bus_drive(%struct.dib7000p_state* %0, i32 %1) #0 {
  %3 = alloca %struct.dib7000p_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dib7000p_state* %0, %struct.dib7000p_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %7 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %6, i32 1798)
  %8 = and i32 %7, -29128
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = shl i32 %9, 12
  %11 = load i32, i32* %4, align 4
  %12 = shl i32 %11, 6
  %13 = or i32 %10, %12
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %18, i32 1798, i32 %19)
  %21 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %22 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %21, i32 1799)
  %23 = and i32 %22, -1821
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = shl i32 %24, 8
  %26 = load i32, i32* %4, align 4
  %27 = shl i32 %26, 2
  %28 = or i32 %25, %27
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %31, i32 1799, i32 %32)
  %34 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %35 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %34, i32 1800)
  %36 = and i32 %35, -29128
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = shl i32 %37, 12
  %39 = load i32, i32* %4, align 4
  %40 = shl i32 %39, 6
  %41 = or i32 %38, %40
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %46, i32 1800, i32 %47)
  %49 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %50 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %49, i32 1801)
  %51 = and i32 %50, -1821
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %4, align 4
  %53 = shl i32 %52, 8
  %54 = load i32, i32* %4, align 4
  %55 = shl i32 %54, 2
  %56 = or i32 %53, %55
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %59, i32 1801, i32 %60)
  %62 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %63 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %62, i32 1802)
  %64 = and i32 %63, -29128
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %4, align 4
  %66 = shl i32 %65, 12
  %67 = load i32, i32* %4, align 4
  %68 = shl i32 %67, 6
  %69 = or i32 %66, %68
  %70 = load i32, i32* %4, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load %struct.dib7000p_state*, %struct.dib7000p_state** %3, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %74, i32 1802, i32 %75)
  ret i32 0
}

declare dso_local i32 @dib7000p_read_word(%struct.dib7000p_state*, i32) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
