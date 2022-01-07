; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_char_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_char_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.file = type { %struct.cs_char* }
%struct.cs_char = type { i32, i32, i32 }

@cs_char_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @cs_char_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_char_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cs_char*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.cs_char*, %struct.cs_char** %8, align 8
  store %struct.cs_char* %9, %struct.cs_char** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @poll_wait(%struct.file* %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cs_char_data, i32 0, i32 0), i32* %11)
  %13 = load %struct.cs_char*, %struct.cs_char** %5, align 8
  %14 = getelementptr inbounds %struct.cs_char, %struct.cs_char* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.cs_char*, %struct.cs_char** %5, align 8
  %17 = getelementptr inbounds %struct.cs_char, %struct.cs_char* %16, i32 0, i32 2
  %18 = call i32 @list_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EPOLLIN, align 4
  %22 = load i32, i32* @EPOLLRDNORM, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %6, align 4
  br label %34

24:                                               ; preds = %2
  %25 = load %struct.cs_char*, %struct.cs_char** %5, align 8
  %26 = getelementptr inbounds %struct.cs_char, %struct.cs_char* %25, i32 0, i32 1
  %27 = call i32 @list_empty(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @EPOLLIN, align 4
  %31 = load i32, i32* @EPOLLRDNORM, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %29, %24
  br label %34

34:                                               ; preds = %33, %20
  %35 = load %struct.cs_char*, %struct.cs_char** %5, align 8
  %36 = getelementptr inbounds %struct.cs_char, %struct.cs_char* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock_bh(i32* %36)
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
