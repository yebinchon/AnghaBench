; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_serport.c_serport_ldisc_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_serport.c_serport_ldisc_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64 }
%struct.serport = type { i32, i32, i32 }

@SERPORT_ACTIVE = common dso_local global i32 0, align 4
@SERIO_FRAME = common dso_local global i32 0, align 4
@SERIO_PARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8*, i8*, i32)* @serport_ldisc_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serport_ldisc_receive(%struct.tty_struct* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.serport*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.serport*
  store %struct.serport* %16, %struct.serport** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.serport*, %struct.serport** %9, align 8
  %18 = getelementptr inbounds %struct.serport, %struct.serport* %17, i32 0, i32 0
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i32, i32* @SERPORT_ACTIVE, align 4
  %22 = load %struct.serport*, %struct.serport** %9, align 8
  %23 = getelementptr inbounds %struct.serport, %struct.serport* %22, i32 0, i32 2
  %24 = call i32 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  br label %63

27:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %59, %27
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %62

32:                                               ; preds = %28
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  switch i32 %41, label %46 [
    i32 129, label %42
    i32 128, label %44
  ]

42:                                               ; preds = %35
  %43 = load i32, i32* @SERIO_FRAME, align 4
  store i32 %43, i32* %11, align 4
  br label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @SERIO_PARITY, align 4
  store i32 %45, i32* %11, align 4
  br label %47

46:                                               ; preds = %35
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %46, %44, %42
  br label %48

48:                                               ; preds = %47, %32
  %49 = load %struct.serport*, %struct.serport** %9, align 8
  %50 = getelementptr inbounds %struct.serport, %struct.serport* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @serio_interrupt(i32 %51, i8 zeroext %56, i32 %57)
  br label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %28

62:                                               ; preds = %28
  br label %63

63:                                               ; preds = %62, %26
  %64 = load %struct.serport*, %struct.serport** %9, align 8
  %65 = getelementptr inbounds %struct.serport, %struct.serport* %64, i32 0, i32 0
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @serio_interrupt(i32, i8 zeroext, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
