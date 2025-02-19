; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_tune.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_lgdt3306a.c_lgdt3306a_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.lgdt3306a_state* }
%struct.lgdt3306a_state = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"re_tune=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32, i32*, i32*)* @lgdt3306a_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lgdt3306a_tune(%struct.dvb_frontend* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dvb_frontend*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.lgdt3306a_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %15 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 0
  %16 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %15, align 8
  store %struct.lgdt3306a_state* %16, %struct.lgdt3306a_state** %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @dbg_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %5
  %22 = load %struct.lgdt3306a_state*, %struct.lgdt3306a_state** %13, align 8
  %23 = getelementptr inbounds %struct.lgdt3306a_state, %struct.lgdt3306a_state* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 4
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %25 = call i32 @lgdt3306a_set_parameters(%struct.dvb_frontend* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %6, align 4
  br label %37

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %5
  %32 = load i32*, i32** %10, align 8
  store i32 125, i32* %32, align 4
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %7, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @lgdt3306a_read_status(%struct.dvb_frontend* %33, i32* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %31, %28
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @dbg_info(i8*, i32) #1

declare dso_local i32 @lgdt3306a_set_parameters(%struct.dvb_frontend*) #1

declare dso_local i32 @lgdt3306a_read_status(%struct.dvb_frontend*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
