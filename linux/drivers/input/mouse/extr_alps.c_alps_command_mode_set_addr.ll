; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_command_mode_set_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_command_mode_set_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { %struct.alps_data*, %struct.ps2dev }
%struct.alps_data = type { i32 }
%struct.ps2dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*, i32)* @alps_command_mode_set_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_command_mode_set_addr(%struct.psmouse* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psmouse*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ps2dev*, align 8
  %7 = alloca %struct.alps_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 1
  store %struct.ps2dev* %11, %struct.ps2dev** %6, align 8
  %12 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %13 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %12, i32 0, i32 0
  %14 = load %struct.alps_data*, %struct.alps_data** %13, align 8
  store %struct.alps_data* %14, %struct.alps_data** %7, align 8
  %15 = load %struct.ps2dev*, %struct.ps2dev** %6, align 8
  %16 = load %struct.alps_data*, %struct.alps_data** %7, align 8
  %17 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @ps2_command(%struct.ps2dev* %15, i32* null, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %41

22:                                               ; preds = %2
  store i32 12, i32* %8, align 4
  br label %23

23:                                               ; preds = %37, %22
  %24 = load i32, i32* %8, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %27, %28
  %30 = and i32 %29, 15
  store i32 %30, i32* %9, align 4
  %31 = load %struct.psmouse*, %struct.psmouse** %4, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @alps_command_mode_send_nibble(%struct.psmouse* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %41

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, 4
  store i32 %39, i32* %8, align 4
  br label %23

40:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %35, %21
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @ps2_command(%struct.ps2dev*, i32*, i32) #1

declare dso_local i64 @alps_command_mode_send_nibble(%struct.psmouse*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
