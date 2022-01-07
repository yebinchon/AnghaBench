; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_turbografx.c_tgfx_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_turbografx.c_tgfx_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tgfx = type { i64, i32, i64* }
%struct.parport = type { i64 }

@TGFX_MAX_PORTS = common dso_local global i32 0, align 4
@tgfx_base = common dso_local global %struct.tgfx** null, align 8
@TGFX_MAX_DEVICES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*)* @tgfx_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tgfx_detach(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tgfx*, align 8
  store %struct.parport* %0, %struct.parport** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %30, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @TGFX_MAX_PORTS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %5
  %10 = load %struct.tgfx**, %struct.tgfx*** @tgfx_base, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.tgfx*, %struct.tgfx** %10, i64 %12
  %14 = load %struct.tgfx*, %struct.tgfx** %13, align 8
  %15 = icmp ne %struct.tgfx* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %9
  %17 = load %struct.tgfx**, %struct.tgfx*** @tgfx_base, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.tgfx*, %struct.tgfx** %17, i64 %19
  %21 = load %struct.tgfx*, %struct.tgfx** %20, align 8
  %22 = getelementptr inbounds %struct.tgfx, %struct.tgfx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.parport*, %struct.parport** %2, align 8
  %25 = getelementptr inbounds %struct.parport, %struct.parport* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  br label %33

29:                                               ; preds = %16, %9
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %5

33:                                               ; preds = %28, %5
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @TGFX_MAX_PORTS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %81

38:                                               ; preds = %33
  %39 = load %struct.tgfx**, %struct.tgfx*** @tgfx_base, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.tgfx*, %struct.tgfx** %39, i64 %41
  %43 = load %struct.tgfx*, %struct.tgfx** %42, align 8
  store %struct.tgfx* %43, %struct.tgfx** %4, align 8
  %44 = load %struct.tgfx**, %struct.tgfx*** @tgfx_base, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.tgfx*, %struct.tgfx** %44, i64 %46
  store %struct.tgfx* null, %struct.tgfx** %47, align 8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %71, %38
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @TGFX_MAX_DEVICES, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %48
  %53 = load %struct.tgfx*, %struct.tgfx** %4, align 8
  %54 = getelementptr inbounds %struct.tgfx, %struct.tgfx* %53, i32 0, i32 2
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %52
  %62 = load %struct.tgfx*, %struct.tgfx** %4, align 8
  %63 = getelementptr inbounds %struct.tgfx, %struct.tgfx* %62, i32 0, i32 2
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @input_unregister_device(i64 %68)
  br label %70

70:                                               ; preds = %61, %52
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %48

74:                                               ; preds = %48
  %75 = load %struct.tgfx*, %struct.tgfx** %4, align 8
  %76 = getelementptr inbounds %struct.tgfx, %struct.tgfx* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @parport_unregister_device(i32 %77)
  %79 = load %struct.tgfx*, %struct.tgfx** %4, align 8
  %80 = call i32 @kfree(%struct.tgfx* %79)
  br label %81

81:                                               ; preds = %74, %37
  ret void
}

declare dso_local i32 @input_unregister_device(i64) #1

declare dso_local i32 @parport_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.tgfx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
