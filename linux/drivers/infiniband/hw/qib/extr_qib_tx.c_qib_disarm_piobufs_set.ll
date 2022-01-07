; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_tx.c_qib_disarm_piobufs_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_tx.c_qib_disarm_piobufs_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i64*, i64*, i32, i32, i32 (i32, i32)*, i32 }
%struct.qib_pportdata = type { i64 }

@QIB_MAX_IB_PORTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_disarm_piobufs_set(%struct.qib_devdata* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_pportdata*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @QIB_MAX_IB_PORTS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca %struct.qib_pportdata*, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %26, %3
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load i32, i32* %10, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.qib_pportdata*, %struct.qib_pportdata** %15, i64 %24
  store %struct.qib_pportdata* null, %struct.qib_pportdata** %25, align 8
  br label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %10, align 4
  br label %16

29:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %97, %29
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %100

34:                                               ; preds = %30
  %35 = load i32, i32* %10, align 4
  %36 = load i64*, i64** %5, align 8
  %37 = call i64 @test_bit(i32 %35, i64* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %97

40:                                               ; preds = %34
  %41 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call %struct.qib_pportdata* @is_sdma_buf(%struct.qib_devdata* %41, i32 %42)
  store %struct.qib_pportdata* %43, %struct.qib_pportdata** %7, align 8
  %44 = load %struct.qib_pportdata*, %struct.qib_pportdata** %7, align 8
  %45 = icmp ne %struct.qib_pportdata* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.qib_pportdata*, %struct.qib_pportdata** %7, align 8
  %48 = load %struct.qib_pportdata*, %struct.qib_pportdata** %7, align 8
  %49 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.qib_pportdata*, %struct.qib_pportdata** %15, i64 %50
  store %struct.qib_pportdata* %47, %struct.qib_pportdata** %51, align 8
  br label %97

52:                                               ; preds = %40
  %53 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %54 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %53, i32 0, i32 3
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %59 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = call i64 @test_bit(i32 %57, i64* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %10, align 4
  %65 = shl i32 %64, 1
  %66 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %67 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %66, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = call i64 @test_bit(i32 %65, i64* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %63
  %72 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i64 @find_ctxt(%struct.qib_devdata* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71, %52
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %79 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @__set_bit(i32 %77, i32 %80)
  br label %92

82:                                               ; preds = %71, %63
  %83 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %84 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %83, i32 0, i32 5
  %85 = load i32 (i32, i32)*, i32 (i32, i32)** %84, align 8
  %86 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %87 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @QIB_SENDCTRL_DISARM_BUF(i32 %89)
  %91 = call i32 %85(i32 %88, i32 %90)
  br label %92

92:                                               ; preds = %82, %76
  %93 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %94 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %93, i32 0, i32 3
  %95 = load i64, i64* %11, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  br label %97

97:                                               ; preds = %92, %46, %39
  %98 = load i32, i32* %10, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %30

100:                                              ; preds = %30
  store i32 0, i32* %10, align 4
  br label %101

101:                                              ; preds = %120, %100
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %104 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ult i32 %102, %105
  br i1 %106, label %107, label %123

107:                                              ; preds = %101
  %108 = load i32, i32* %10, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.qib_pportdata*, %struct.qib_pportdata** %15, i64 %109
  %111 = load %struct.qib_pportdata*, %struct.qib_pportdata** %110, align 8
  %112 = icmp ne %struct.qib_pportdata* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load i32, i32* %10, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.qib_pportdata*, %struct.qib_pportdata** %15, i64 %115
  %117 = load %struct.qib_pportdata*, %struct.qib_pportdata** %116, align 8
  %118 = call i32 @qib_cancel_sends(%struct.qib_pportdata* %117)
  br label %119

119:                                              ; preds = %113, %107
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %10, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %101

123:                                              ; preds = %101
  %124 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %124)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @test_bit(i32, i64*) #2

declare dso_local %struct.qib_pportdata* @is_sdma_buf(%struct.qib_devdata*, i32) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i64 @find_ctxt(%struct.qib_devdata*, i32) #2

declare dso_local i32 @__set_bit(i32, i32) #2

declare dso_local i32 @QIB_SENDCTRL_DISARM_BUF(i32) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @qib_cancel_sends(%struct.qib_pportdata*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
