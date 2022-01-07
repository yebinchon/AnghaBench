; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dec_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dec_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_io = type { i64, %struct.bio*, i32, i32, %struct.mapped_device* }
%struct.bio = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mapped_device = type { i32, i32 }

@BLK_STS_DM_REQUEUE = common dso_local global i64 0, align 8
@BLK_STS_IOERR = common dso_local global i64 0, align 8
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_io*, i64)* @dec_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dec_pending(%struct.dm_io* %0, i64 %1) #0 {
  %3 = alloca %struct.dm_io*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.mapped_device*, align 8
  store %struct.dm_io* %0, %struct.dm_io** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.dm_io*, %struct.dm_io** %3, align 8
  %10 = getelementptr inbounds %struct.dm_io, %struct.dm_io* %9, i32 0, i32 4
  %11 = load %struct.mapped_device*, %struct.mapped_device** %10, align 8
  store %struct.mapped_device* %11, %struct.mapped_device** %8, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @unlikely(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %2
  %16 = load %struct.dm_io*, %struct.dm_io** %3, align 8
  %17 = getelementptr inbounds %struct.dm_io, %struct.dm_io* %16, i32 0, i32 3
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.dm_io*, %struct.dm_io** %3, align 8
  %21 = getelementptr inbounds %struct.dm_io, %struct.dm_io* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BLK_STS_DM_REQUEUE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %27 = call i64 @__noflush_suspending(%struct.mapped_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25, %15
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.dm_io*, %struct.dm_io** %3, align 8
  %32 = getelementptr inbounds %struct.dm_io, %struct.dm_io* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.dm_io*, %struct.dm_io** %3, align 8
  %35 = getelementptr inbounds %struct.dm_io, %struct.dm_io* %34, i32 0, i32 3
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  br label %38

38:                                               ; preds = %33, %2
  %39 = load %struct.dm_io*, %struct.dm_io** %3, align 8
  %40 = getelementptr inbounds %struct.dm_io, %struct.dm_io* %39, i32 0, i32 2
  %41 = call i64 @atomic_dec_and_test(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %123

43:                                               ; preds = %38
  %44 = load %struct.dm_io*, %struct.dm_io** %3, align 8
  %45 = getelementptr inbounds %struct.dm_io, %struct.dm_io* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @BLK_STS_DM_REQUEUE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %43
  %50 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %51 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %50, i32 0, i32 0
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %55 = call i64 @__noflush_suspending(%struct.mapped_device* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %59 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %58, i32 0, i32 1
  %60 = load %struct.dm_io*, %struct.dm_io** %3, align 8
  %61 = getelementptr inbounds %struct.dm_io, %struct.dm_io* %60, i32 0, i32 1
  %62 = load %struct.bio*, %struct.bio** %61, align 8
  %63 = call i32 @bio_list_add_head(i32* %59, %struct.bio* %62)
  br label %68

64:                                               ; preds = %49
  %65 = load i64, i64* @BLK_STS_IOERR, align 8
  %66 = load %struct.dm_io*, %struct.dm_io** %3, align 8
  %67 = getelementptr inbounds %struct.dm_io, %struct.dm_io* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %57
  %69 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %70 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %69, i32 0, i32 0
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  br label %73

73:                                               ; preds = %68, %43
  %74 = load %struct.dm_io*, %struct.dm_io** %3, align 8
  %75 = getelementptr inbounds %struct.dm_io, %struct.dm_io* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %6, align 8
  %77 = load %struct.dm_io*, %struct.dm_io** %3, align 8
  %78 = getelementptr inbounds %struct.dm_io, %struct.dm_io* %77, i32 0, i32 1
  %79 = load %struct.bio*, %struct.bio** %78, align 8
  store %struct.bio* %79, %struct.bio** %7, align 8
  %80 = load %struct.dm_io*, %struct.dm_io** %3, align 8
  %81 = call i32 @end_io_acct(%struct.dm_io* %80)
  %82 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %83 = load %struct.dm_io*, %struct.dm_io** %3, align 8
  %84 = call i32 @free_io(%struct.mapped_device* %82, %struct.dm_io* %83)
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* @BLK_STS_DM_REQUEUE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %73
  br label %123

89:                                               ; preds = %73
  %90 = load %struct.bio*, %struct.bio** %7, align 8
  %91 = getelementptr inbounds %struct.bio, %struct.bio* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @REQ_PREFLUSH, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %89
  %97 = load %struct.bio*, %struct.bio** %7, align 8
  %98 = getelementptr inbounds %struct.bio, %struct.bio* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %96
  %103 = load i32, i32* @REQ_PREFLUSH, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.bio*, %struct.bio** %7, align 8
  %106 = getelementptr inbounds %struct.bio, %struct.bio* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %110 = load %struct.bio*, %struct.bio** %7, align 8
  %111 = call i32 @queue_io(%struct.mapped_device* %109, %struct.bio* %110)
  br label %122

112:                                              ; preds = %96, %89
  %113 = load i64, i64* %6, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i64, i64* %6, align 8
  %117 = load %struct.bio*, %struct.bio** %7, align 8
  %118 = getelementptr inbounds %struct.bio, %struct.bio* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %115, %112
  %120 = load %struct.bio*, %struct.bio** %7, align 8
  %121 = call i32 @bio_endio(%struct.bio* %120)
  br label %122

122:                                              ; preds = %119, %102
  br label %123

123:                                              ; preds = %88, %122, %38
  ret void
}

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @__noflush_suspending(%struct.mapped_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @bio_list_add_head(i32*, %struct.bio*) #1

declare dso_local i32 @end_io_acct(%struct.dm_io*) #1

declare dso_local i32 @free_io(%struct.mapped_device*, %struct.dm_io*) #1

declare dso_local i32 @queue_io(%struct.mapped_device*, %struct.bio*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
