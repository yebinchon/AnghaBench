; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox.c_mbox_controller_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox.c_mbox_controller_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_controller = type { i32, i32, i64, %struct.mbox_chan*, %struct.TYPE_4__, i32, %struct.TYPE_3__*, i64, i64 }
%struct.mbox_chan = type { i32, i32, %struct.mbox_controller*, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TXDONE_BY_IRQ = common dso_local global i32 0, align 4
@TXDONE_BY_POLL = common dso_local global i32 0, align 4
@TXDONE_BY_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"last_tx_done method is absent\0A\00", align 1
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@txdone_hrtimer = common dso_local global i32 0, align 4
@of_mbox_index_xlate = common dso_local global i64 0, align 8
@con_mutex = common dso_local global i32 0, align 4
@mbox_cons = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbox_controller_register(%struct.mbox_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbox_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbox_chan*, align 8
  store %struct.mbox_controller* %0, %struct.mbox_controller** %3, align 8
  %7 = load %struct.mbox_controller*, %struct.mbox_controller** %3, align 8
  %8 = icmp ne %struct.mbox_controller* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.mbox_controller*, %struct.mbox_controller** %3, align 8
  %11 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load %struct.mbox_controller*, %struct.mbox_controller** %3, align 8
  %16 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %15, i32 0, i32 6
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.mbox_controller*, %struct.mbox_controller** %3, align 8
  %21 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19, %14, %9, %1
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %115

27:                                               ; preds = %19
  %28 = load %struct.mbox_controller*, %struct.mbox_controller** %3, align 8
  %29 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %28, i32 0, i32 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @TXDONE_BY_IRQ, align 4
  store i32 %33, i32* %5, align 4
  br label %44

34:                                               ; preds = %27
  %35 = load %struct.mbox_controller*, %struct.mbox_controller** %3, align 8
  %36 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @TXDONE_BY_POLL, align 4
  store i32 %40, i32* %5, align 4
  br label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @TXDONE_BY_ACK, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %39
  br label %44

44:                                               ; preds = %43, %32
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @TXDONE_BY_POLL, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %44
  %49 = load %struct.mbox_controller*, %struct.mbox_controller** %3, align 8
  %50 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %49, i32 0, i32 6
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load %struct.mbox_controller*, %struct.mbox_controller** %3, align 8
  %57 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %115

62:                                               ; preds = %48
  %63 = load %struct.mbox_controller*, %struct.mbox_controller** %3, align 8
  %64 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %63, i32 0, i32 4
  %65 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %66 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %67 = call i32 @hrtimer_init(%struct.TYPE_4__* %64, i32 %65, i32 %66)
  %68 = load i32, i32* @txdone_hrtimer, align 4
  %69 = load %struct.mbox_controller*, %struct.mbox_controller** %3, align 8
  %70 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  br label %72

72:                                               ; preds = %62, %44
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %97, %72
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.mbox_controller*, %struct.mbox_controller** %3, align 8
  %76 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %73
  %80 = load %struct.mbox_controller*, %struct.mbox_controller** %3, align 8
  %81 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %80, i32 0, i32 3
  %82 = load %struct.mbox_chan*, %struct.mbox_chan** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %82, i64 %84
  store %struct.mbox_chan* %85, %struct.mbox_chan** %6, align 8
  %86 = load %struct.mbox_chan*, %struct.mbox_chan** %6, align 8
  %87 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %86, i32 0, i32 3
  store i32* null, i32** %87, align 8
  %88 = load %struct.mbox_controller*, %struct.mbox_controller** %3, align 8
  %89 = load %struct.mbox_chan*, %struct.mbox_chan** %6, align 8
  %90 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %89, i32 0, i32 2
  store %struct.mbox_controller* %88, %struct.mbox_controller** %90, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.mbox_chan*, %struct.mbox_chan** %6, align 8
  %93 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.mbox_chan*, %struct.mbox_chan** %6, align 8
  %95 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %94, i32 0, i32 1
  %96 = call i32 @spin_lock_init(i32* %95)
  br label %97

97:                                               ; preds = %79
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %73

100:                                              ; preds = %73
  %101 = load %struct.mbox_controller*, %struct.mbox_controller** %3, align 8
  %102 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %100
  %106 = load i64, i64* @of_mbox_index_xlate, align 8
  %107 = load %struct.mbox_controller*, %struct.mbox_controller** %3, align 8
  %108 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %107, i32 0, i32 2
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %105, %100
  %110 = call i32 @mutex_lock(i32* @con_mutex)
  %111 = load %struct.mbox_controller*, %struct.mbox_controller** %3, align 8
  %112 = getelementptr inbounds %struct.mbox_controller, %struct.mbox_controller* %111, i32 0, i32 1
  %113 = call i32 @list_add_tail(i32* %112, i32* @mbox_cons)
  %114 = call i32 @mutex_unlock(i32* @con_mutex)
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %109, %55, %24
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
