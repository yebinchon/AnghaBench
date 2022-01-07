; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_get_one_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_ti_sci.c_ti_sci_get_one_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sci_xfer = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.ti_sci_info = type { i32, %struct.TYPE_3__*, %struct.ti_sci_xfers_info }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.ti_sci_xfers_info = type { %struct.ti_sci_xfer*, i32, i32, i32 }
%struct.ti_sci_msg_hdr = type { i64, i32, i32, i32 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ti_sci_xfer* (%struct.ti_sci_info*, i32, i32, i64, i64)* @ti_sci_get_one_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ti_sci_xfer* @ti_sci_get_one_xfer(%struct.ti_sci_info* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.ti_sci_xfer*, align 8
  %7 = alloca %struct.ti_sci_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ti_sci_xfers_info*, align 8
  %13 = alloca %struct.ti_sci_xfer*, align 8
  %14 = alloca %struct.ti_sci_msg_hdr*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ti_sci_info* %0, %struct.ti_sci_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %20 = load %struct.ti_sci_info*, %struct.ti_sci_info** %7, align 8
  %21 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %20, i32 0, i32 2
  store %struct.ti_sci_xfers_info* %21, %struct.ti_sci_xfers_info** %12, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load %struct.ti_sci_info*, %struct.ti_sci_info** %7, align 8
  %24 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ugt i64 %22, %27
  br i1 %28, label %43, label %29

29:                                               ; preds = %5
  %30 = load i64, i64* %10, align 8
  %31 = load %struct.ti_sci_info*, %struct.ti_sci_info** %7, align 8
  %32 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ugt i64 %30, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %29
  %38 = load i64, i64* %11, align 8
  %39 = icmp ult i64 %38, 24
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %10, align 8
  %42 = icmp ult i64 %41, 24
  br i1 %42, label %43, label %47

43:                                               ; preds = %40, %37, %29, %5
  %44 = load i32, i32* @ERANGE, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.ti_sci_xfer* @ERR_PTR(i32 %45)
  store %struct.ti_sci_xfer* %46, %struct.ti_sci_xfer** %6, align 8
  br label %123

47:                                               ; preds = %40
  %48 = load %struct.ti_sci_info*, %struct.ti_sci_info** %7, align 8
  %49 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @msecs_to_jiffies(i32 %52)
  %54 = mul nsw i32 %53, 5
  store i32 %54, i32* %19, align 4
  %55 = load %struct.ti_sci_xfers_info*, %struct.ti_sci_xfers_info** %12, align 8
  %56 = getelementptr inbounds %struct.ti_sci_xfers_info, %struct.ti_sci_xfers_info* %55, i32 0, i32 3
  %57 = load i32, i32* %19, align 4
  %58 = call i32 @down_timeout(i32* %56, i32 %57)
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %18, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %47
  %62 = load i32, i32* %18, align 4
  %63 = call %struct.ti_sci_xfer* @ERR_PTR(i32 %62)
  store %struct.ti_sci_xfer* %63, %struct.ti_sci_xfer** %6, align 8
  br label %123

64:                                               ; preds = %47
  %65 = load %struct.ti_sci_xfers_info*, %struct.ti_sci_xfers_info** %12, align 8
  %66 = getelementptr inbounds %struct.ti_sci_xfers_info, %struct.ti_sci_xfers_info* %65, i32 0, i32 1
  %67 = load i64, i64* %15, align 8
  %68 = call i32 @spin_lock_irqsave(i32* %66, i64 %67)
  %69 = load %struct.ti_sci_xfers_info*, %struct.ti_sci_xfers_info** %12, align 8
  %70 = getelementptr inbounds %struct.ti_sci_xfers_info, %struct.ti_sci_xfers_info* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ti_sci_info*, %struct.ti_sci_info** %7, align 8
  %73 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @find_first_zero_bit(i32 %71, i32 %76)
  store i64 %77, i64* %16, align 8
  %78 = load i64, i64* %16, align 8
  %79 = load %struct.ti_sci_xfers_info*, %struct.ti_sci_xfers_info** %12, align 8
  %80 = getelementptr inbounds %struct.ti_sci_xfers_info, %struct.ti_sci_xfers_info* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @set_bit(i64 %78, i32 %81)
  %83 = load %struct.ti_sci_xfers_info*, %struct.ti_sci_xfers_info** %12, align 8
  %84 = getelementptr inbounds %struct.ti_sci_xfers_info, %struct.ti_sci_xfers_info* %83, i32 0, i32 1
  %85 = load i64, i64* %15, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load i64, i64* %16, align 8
  store i64 %87, i64* %17, align 8
  %88 = load %struct.ti_sci_xfers_info*, %struct.ti_sci_xfers_info** %12, align 8
  %89 = getelementptr inbounds %struct.ti_sci_xfers_info, %struct.ti_sci_xfers_info* %88, i32 0, i32 0
  %90 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %89, align 8
  %91 = load i64, i64* %17, align 8
  %92 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %90, i64 %91
  store %struct.ti_sci_xfer* %92, %struct.ti_sci_xfer** %13, align 8
  %93 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %94 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to %struct.ti_sci_msg_hdr*
  store %struct.ti_sci_msg_hdr* %97, %struct.ti_sci_msg_hdr** %14, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %100 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i64 %98, i64* %101, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %104 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  %106 = getelementptr inbounds %struct.ti_sci_xfer, %struct.ti_sci_xfer* %105, i32 0, i32 1
  %107 = call i32 @reinit_completion(i32* %106)
  %108 = load i64, i64* %17, align 8
  %109 = load %struct.ti_sci_msg_hdr*, %struct.ti_sci_msg_hdr** %14, align 8
  %110 = getelementptr inbounds %struct.ti_sci_msg_hdr, %struct.ti_sci_msg_hdr* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.ti_sci_msg_hdr*, %struct.ti_sci_msg_hdr** %14, align 8
  %113 = getelementptr inbounds %struct.ti_sci_msg_hdr, %struct.ti_sci_msg_hdr* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 8
  %114 = load %struct.ti_sci_info*, %struct.ti_sci_info** %7, align 8
  %115 = getelementptr inbounds %struct.ti_sci_info, %struct.ti_sci_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ti_sci_msg_hdr*, %struct.ti_sci_msg_hdr** %14, align 8
  %118 = getelementptr inbounds %struct.ti_sci_msg_hdr, %struct.ti_sci_msg_hdr* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.ti_sci_msg_hdr*, %struct.ti_sci_msg_hdr** %14, align 8
  %121 = getelementptr inbounds %struct.ti_sci_msg_hdr, %struct.ti_sci_msg_hdr* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 8
  %122 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %13, align 8
  store %struct.ti_sci_xfer* %122, %struct.ti_sci_xfer** %6, align 8
  br label %123

123:                                              ; preds = %64, %61, %43
  %124 = load %struct.ti_sci_xfer*, %struct.ti_sci_xfer** %6, align 8
  ret %struct.ti_sci_xfer* %124
}

declare dso_local %struct.ti_sci_xfer* @ERR_PTR(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @down_timeout(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
