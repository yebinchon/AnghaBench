; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_cir.c_picolcd_raw_cir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_cir.c_picolcd_raw_cir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.picolcd_data = type { i32, i32, i32 }
%struct.hid_report = type { i32 }
%struct.ir_raw_event = type { i32, i32 }

@PICOLCD_CIR_SHUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @picolcd_raw_cir(%struct.picolcd_data* %0, %struct.hid_report* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.picolcd_data*, align 8
  %7 = alloca %struct.hid_report*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ir_raw_event, align 4
  store %struct.picolcd_data* %0, %struct.picolcd_data** %6, align 8
  store %struct.hid_report* %1, %struct.hid_report** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = bitcast %struct.ir_raw_event* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = load %struct.picolcd_data*, %struct.picolcd_data** %6, align 8
  %17 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %16, i32 0, i32 2
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.picolcd_data*, %struct.picolcd_data** %6, align 8
  %21 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load %struct.picolcd_data*, %struct.picolcd_data** %6, align 8
  %26 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PICOLCD_CIR_SHUN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24, %4
  %32 = load %struct.picolcd_data*, %struct.picolcd_data** %6, align 8
  %33 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %32, i32 0, i32 2
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  store i32 1, i32* %5, align 4
  br label %114

36:                                               ; preds = %24
  %37 = load %struct.picolcd_data*, %struct.picolcd_data** %6, align 8
  %38 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %37, i32 0, i32 2
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load i32, i32* %9, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, 1
  %49 = call i32 @min(i32 %46, i32 %48)
  br label %51

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50, %43
  %52 = phi i32 [ %49, %43 ], [ 0, %50 ]
  store i32 %52, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %106, %51
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %109

58:                                               ; preds = %53
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %64, %70
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = and i32 %72, 32768
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %14, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %14, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %58
  %83 = load i32, i32* %12, align 4
  %84 = sub nsw i32 65536, %83
  br label %87

85:                                               ; preds = %58
  %86 = load i32, i32* %12, align 4
  br label %87

87:                                               ; preds = %85, %82
  %88 = phi i32 [ %84, %82 ], [ %86, %85 ]
  %89 = call i32 @US_TO_NS(i32 %88)
  %90 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %14, i32 0, i32 1
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %14, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %95, 15000000
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %14, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, 15000000
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %97, %93, %87
  %102 = load %struct.picolcd_data*, %struct.picolcd_data** %6, align 8
  %103 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ir_raw_event_store(i32 %104, %struct.ir_raw_event* %14)
  br label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 2
  store i32 %108, i32* %11, align 4
  br label %53

109:                                              ; preds = %53
  %110 = load %struct.picolcd_data*, %struct.picolcd_data** %6, align 8
  %111 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ir_raw_event_handle(i32 %112)
  store i32 1, i32* %5, align 4
  br label %114

114:                                              ; preds = %109, %31
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @US_TO_NS(i32) #2

declare dso_local i32 @ir_raw_event_store(i32, %struct.ir_raw_event*) #2

declare dso_local i32 @ir_raw_event_handle(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
