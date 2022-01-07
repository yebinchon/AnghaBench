; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_l1oip_core.c_release_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_l1oip_core.c_release_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l1oip = type { i64, i32, %struct.TYPE_2__*, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, %struct.l1oip*, %struct.l1oip* }

@l1oip_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l1oip*)* @release_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_card(%struct.l1oip* %0) #0 {
  %2 = alloca %struct.l1oip*, align 8
  %3 = alloca i32, align 4
  store %struct.l1oip* %0, %struct.l1oip** %2, align 8
  %4 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %5 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %4, i32 0, i32 8
  %6 = call i64 @timer_pending(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %10 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %9, i32 0, i32 8
  %11 = call i32 @del_timer(i32* %10)
  br label %12

12:                                               ; preds = %8, %1
  %13 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %14 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %13, i32 0, i32 7
  %15 = call i64 @timer_pending(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %19 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %18, i32 0, i32 7
  %20 = call i32 @del_timer(i32* %19)
  br label %21

21:                                               ; preds = %17, %12
  %22 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %23 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %22, i32 0, i32 6
  %24 = call i32 @cancel_work_sync(i32* %23)
  %25 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %26 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %31 = call i32 @l1oip_socket_close(%struct.l1oip* %30)
  br label %32

32:                                               ; preds = %29, %21
  %33 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %34 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %32
  %38 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %39 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %42 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load %struct.l1oip*, %struct.l1oip** %45, align 8
  %47 = icmp ne %struct.l1oip* %46, null
  br i1 %47, label %48, label %60

48:                                               ; preds = %37
  %49 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %50 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %53 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load %struct.l1oip*, %struct.l1oip** %56, align 8
  %58 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %57, i32 0, i32 3
  %59 = call i32 @mISDN_unregister_device(i32* %58)
  br label %60

60:                                               ; preds = %48, %37, %32
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %123, %60
  %62 = load i32, i32* %3, align 4
  %63 = icmp slt i32 %62, 128
  br i1 %63, label %64, label %126

64:                                               ; preds = %61
  %65 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %66 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load %struct.l1oip*, %struct.l1oip** %71, align 8
  %73 = icmp ne %struct.l1oip* %72, null
  br i1 %73, label %74, label %93

74:                                               ; preds = %64
  %75 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %76 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load %struct.l1oip*, %struct.l1oip** %81, align 8
  %83 = call i32 @mISDN_freedchannel(%struct.l1oip* %82)
  %84 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %85 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load %struct.l1oip*, %struct.l1oip** %90, align 8
  %92 = call i32 @kfree(%struct.l1oip* %91)
  br label %93

93:                                               ; preds = %74, %64
  %94 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %95 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load %struct.l1oip*, %struct.l1oip** %100, align 8
  %102 = icmp ne %struct.l1oip* %101, null
  br i1 %102, label %103, label %122

103:                                              ; preds = %93
  %104 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %105 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %104, i32 0, i32 2
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load %struct.l1oip*, %struct.l1oip** %110, align 8
  %112 = call i32 @mISDN_freebchannel(%struct.l1oip* %111)
  %113 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %114 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %113, i32 0, i32 2
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load %struct.l1oip*, %struct.l1oip** %119, align 8
  %121 = call i32 @kfree(%struct.l1oip* %120)
  br label %122

122:                                              ; preds = %103, %93
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %3, align 4
  br label %61

126:                                              ; preds = %61
  %127 = call i32 @spin_lock(i32* @l1oip_lock)
  %128 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %129 = getelementptr inbounds %struct.l1oip, %struct.l1oip* %128, i32 0, i32 1
  %130 = call i32 @list_del(i32* %129)
  %131 = call i32 @spin_unlock(i32* @l1oip_lock)
  %132 = load %struct.l1oip*, %struct.l1oip** %2, align 8
  %133 = call i32 @kfree(%struct.l1oip* %132)
  ret void
}

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @l1oip_socket_close(%struct.l1oip*) #1

declare dso_local i32 @mISDN_unregister_device(i32*) #1

declare dso_local i32 @mISDN_freedchannel(%struct.l1oip*) #1

declare dso_local i32 @kfree(%struct.l1oip*) #1

declare dso_local i32 @mISDN_freebchannel(%struct.l1oip*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
