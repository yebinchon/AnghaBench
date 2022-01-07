; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_is_cs19_trackpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_is_cs19_trackpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i32 }

@TP_READ_ID = common dso_local global i32 0, align 4
@TP_VARIANT_ALPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psmouse*)* @alps_is_cs19_trackpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_is_cs19_trackpoint(%struct.psmouse* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.psmouse*, align 8
  %4 = alloca [2 x i32], align 4
  store %struct.psmouse* %0, %struct.psmouse** %3, align 8
  %5 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 8, i1 false)
  %6 = load %struct.psmouse*, %struct.psmouse** %3, align 8
  %7 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %6, i32 0, i32 0
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %9 = load i32, i32* @TP_READ_ID, align 4
  %10 = call i32 @MAKE_PS2_CMD(i32 0, i32 2, i32 %9)
  %11 = call i64 @ps2_command(i32* %7, i32* %8, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

14:                                               ; preds = %1
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TP_VARIANT_ALPS, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 240
  %23 = icmp eq i32 %22, 32
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ false, %14 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %13
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ps2_command(i32*, i32*, i32) #2

declare dso_local i32 @MAKE_PS2_CMD(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
