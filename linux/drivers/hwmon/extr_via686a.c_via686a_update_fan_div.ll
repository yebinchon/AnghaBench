; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_via686a.c_via686a_update_fan_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_via686a.c_via686a_update_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via686a_data = type { i32* }

@VIA686A_REG_FANDIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.via686a_data*)* @via686a_update_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via686a_update_fan_div(%struct.via686a_data* %0) #0 {
  %2 = alloca %struct.via686a_data*, align 8
  %3 = alloca i32, align 4
  store %struct.via686a_data* %0, %struct.via686a_data** %2, align 8
  %4 = load %struct.via686a_data*, %struct.via686a_data** %2, align 8
  %5 = load i32, i32* @VIA686A_REG_FANDIV, align 4
  %6 = call i32 @via686a_read_value(%struct.via686a_data* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = ashr i32 %7, 4
  %9 = and i32 %8, 3
  %10 = load %struct.via686a_data*, %struct.via686a_data** %2, align 8
  %11 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %9, i32* %13, align 4
  %14 = load i32, i32* %3, align 4
  %15 = ashr i32 %14, 6
  %16 = load %struct.via686a_data*, %struct.via686a_data** %2, align 8
  %17 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 %15, i32* %19, align 4
  ret void
}

declare dso_local i32 @via686a_read_value(%struct.via686a_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
