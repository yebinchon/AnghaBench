; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367_write_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0367.c_stv0367_write_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0367_state = type { i32 }
%struct.st_register = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stv0367_state*, %struct.st_register*)* @stv0367_write_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stv0367_write_table(%struct.stv0367_state* %0, %struct.st_register* %1) #0 {
  %3 = alloca %struct.stv0367_state*, align 8
  %4 = alloca %struct.st_register*, align 8
  %5 = alloca i32, align 4
  store %struct.stv0367_state* %0, %struct.stv0367_state** %3, align 8
  store %struct.st_register* %1, %struct.st_register** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %2, %15
  %7 = load %struct.st_register*, %struct.st_register** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.st_register, %struct.st_register* %7, i64 %9
  %11 = getelementptr inbounds %struct.st_register, %struct.st_register* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %6
  br label %32

15:                                               ; preds = %6
  %16 = load %struct.stv0367_state*, %struct.stv0367_state** %3, align 8
  %17 = load %struct.st_register*, %struct.st_register** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.st_register, %struct.st_register* %17, i64 %19
  %21 = getelementptr inbounds %struct.st_register, %struct.st_register* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.st_register*, %struct.st_register** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.st_register, %struct.st_register* %23, i64 %25
  %27 = getelementptr inbounds %struct.st_register, %struct.st_register* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @stv0367_writereg(%struct.stv0367_state* %16, i32 %22, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %6

32:                                               ; preds = %14
  ret void
}

declare dso_local i32 @stv0367_writereg(%struct.stv0367_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
