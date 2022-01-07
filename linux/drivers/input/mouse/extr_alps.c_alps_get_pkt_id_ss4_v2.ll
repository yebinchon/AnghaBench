; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_get_pkt_id_ss4_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_get_pkt_id_ss4_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SS4_PACKET_ID_IDLE = common dso_local global i32 0, align 4
@SS4_PACKET_ID_ONE = common dso_local global i32 0, align 4
@SS4_PACKET_ID_TWO = common dso_local global i32 0, align 4
@SS4_PACKET_ID_STICK = common dso_local global i32 0, align 4
@SS4_PACKET_ID_MULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @alps_get_pkt_id_ss4_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_get_pkt_id_ss4_v2(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @SS4_PACKET_ID_IDLE, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 3
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = and i32 %8, 48
  switch i32 %9, label %25 [
    i32 0, label %10
    i32 16, label %19
    i32 32, label %21
    i32 48, label %23
  ]

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @SS4_IS_IDLE_V2(i8* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @SS4_PACKET_ID_IDLE, align 4
  store i32 %15, i32* %3, align 4
  br label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @SS4_PACKET_ID_ONE, align 4
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %16, %14
  br label %25

19:                                               ; preds = %1
  %20 = load i32, i32* @SS4_PACKET_ID_TWO, align 4
  store i32 %20, i32* %3, align 4
  br label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @SS4_PACKET_ID_STICK, align 4
  store i32 %22, i32* %3, align 4
  br label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @SS4_PACKET_ID_MULTI, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %1, %23, %21, %19, %18
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @SS4_IS_IDLE_V2(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
