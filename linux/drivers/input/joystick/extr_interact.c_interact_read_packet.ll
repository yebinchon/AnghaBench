; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_interact.c_interact_read_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_interact.c_interact_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32 }

@INTERACT_MAX_START = common dso_local global i32 0, align 4
@INTERACT_MAX_STROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gameport*, i32, i32*)* @interact_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interact_read_packet(%struct.gameport* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.gameport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 0, i32* %16, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 0, i32* %18, align 4
  %19 = load %struct.gameport*, %struct.gameport** %4, align 8
  %20 = load i32, i32* @INTERACT_MAX_START, align 4
  %21 = call i32 @gameport_time(%struct.gameport* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.gameport*, %struct.gameport** %4, align 8
  %23 = load i32, i32* @INTERACT_MAX_STROBE, align 4
  %24 = call i32 @gameport_time(%struct.gameport* %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @local_irq_save(i64 %25)
  %27 = load %struct.gameport*, %struct.gameport** %4, align 8
  %28 = call i32 @gameport_trigger(%struct.gameport* %27)
  %29 = load %struct.gameport*, %struct.gameport** %4, align 8
  %30 = call zeroext i8 @gameport_read(%struct.gameport* %29)
  store i8 %30, i8* %9, align 1
  br label %31

31:                                               ; preds = %91, %3
  %32 = load i32, i32* %10, align 4
  %33 = icmp ugt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %35, %36
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i1 [ false, %31 ], [ %37, %34 ]
  br i1 %39, label %40, label %92

40:                                               ; preds = %38
  %41 = load i32, i32* %10, align 4
  %42 = add i32 %41, -1
  store i32 %42, i32* %10, align 4
  %43 = load i8, i8* %9, align 1
  store i8 %43, i8* %8, align 1
  %44 = load %struct.gameport*, %struct.gameport** %4, align 8
  %45 = call zeroext i8 @gameport_read(%struct.gameport* %44)
  store i8 %45, i8* %9, align 1
  %46 = load i8, i8* %9, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* %8, align 1
  %49 = zext i8 %48 to i32
  %50 = xor i32 %49, -1
  %51 = and i32 %47, %50
  %52 = and i32 %51, 64
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %91

54:                                               ; preds = %40
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 1
  %59 = load i8, i8* %9, align 1
  %60 = zext i8 %59 to i32
  %61 = ashr i32 %60, 4
  %62 = and i32 %61, 1
  %63 = or i32 %58, %62
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 1
  %70 = load i8, i8* %9, align 1
  %71 = zext i8 %70 to i32
  %72 = ashr i32 %71, 5
  %73 = and i32 %72, 1
  %74 = or i32 %69, %73
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %74, i32* %76, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 1
  %81 = load i8, i8* %9, align 1
  %82 = zext i8 %81 to i32
  %83 = ashr i32 %82, 7
  %84 = and i32 %83, 1
  %85 = or i32 %80, %84
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %54, %40
  br label %31

92:                                               ; preds = %38
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @local_irq_restore(i64 %93)
  %95 = load i32, i32* %12, align 4
  ret i32 %95
}

declare dso_local i32 @gameport_time(%struct.gameport*, i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @gameport_trigger(%struct.gameport*) #1

declare dso_local zeroext i8 @gameport_read(%struct.gameport*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
