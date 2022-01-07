; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-api.c_cec_is_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-api.c_cec_is_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { %struct.cec_fh*, %struct.cec_fh* }
%struct.cec_fh = type { i64 }

@CEC_MODE_NO_INITIATOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, %struct.cec_fh*)* @cec_is_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cec_is_busy(%struct.cec_adapter* %0, %struct.cec_fh* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cec_adapter*, align 8
  %5 = alloca %struct.cec_fh*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %4, align 8
  store %struct.cec_fh* %1, %struct.cec_fh** %5, align 8
  %8 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %8, i32 0, i32 0
  %10 = load %struct.cec_fh*, %struct.cec_fh** %9, align 8
  %11 = icmp ne %struct.cec_fh* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %13, i32 0, i32 0
  %15 = load %struct.cec_fh*, %struct.cec_fh** %14, align 8
  %16 = load %struct.cec_fh*, %struct.cec_fh** %5, align 8
  %17 = icmp eq %struct.cec_fh* %15, %16
  br label %18

18:                                               ; preds = %12, %2
  %19 = phi i1 [ false, %2 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %21, i32 0, i32 1
  %23 = load %struct.cec_fh*, %struct.cec_fh** %22, align 8
  %24 = icmp ne %struct.cec_fh* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %26, i32 0, i32 1
  %28 = load %struct.cec_fh*, %struct.cec_fh** %27, align 8
  %29 = load %struct.cec_fh*, %struct.cec_fh** %5, align 8
  %30 = icmp eq %struct.cec_fh* %28, %29
  br label %31

31:                                               ; preds = %25, %18
  %32 = phi i1 [ false, %18 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %31
  store i32 0, i32* %3, align 4
  br label %54

40:                                               ; preds = %36
  %41 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %42 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %41, i32 0, i32 0
  %43 = load %struct.cec_fh*, %struct.cec_fh** %42, align 8
  %44 = icmp ne %struct.cec_fh* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load %struct.cec_fh*, %struct.cec_fh** %5, align 8
  %47 = getelementptr inbounds %struct.cec_fh, %struct.cec_fh* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CEC_MODE_NO_INITIATOR, align 8
  %50 = icmp eq i64 %48, %49
  br label %51

51:                                               ; preds = %45, %40
  %52 = phi i1 [ true, %40 ], [ %50, %45 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %39
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
