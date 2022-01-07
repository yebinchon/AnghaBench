; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNinfineon.c_setup_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNinfineon.c_setup_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf_hw = type { i32, %struct.TYPE_13__, i32, %struct.TYPE_10__*, i32, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*)*, %struct.TYPE_12__, i8*, i32*, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i8* }

@MISDN_MAX_IDLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@inf_cnt = common dso_local global i32 0, align 4
@card_lock = common dso_local global i32 0, align 4
@Cards = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@inf_ctrl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Infineon %d cards installed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inf_hw*)* @setup_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_instance(%struct.inf_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inf_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.inf_hw* %0, %struct.inf_hw** %3, align 8
  %6 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %7 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load i64, i64* @MISDN_MAX_IDLEN, align 8
  %10 = sub nsw i64 %9, 1
  %11 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %12 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %11, i32 0, i32 5
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* @inf_cnt, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i32 @snprintf(i32 %8, i64 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @write_lock_irqsave(i32* @card_lock, i32 %19)
  %21 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %22 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %21, i32 0, i32 0
  %23 = call i32 @list_add_tail(i32* %22, i32* @Cards)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @write_unlock_irqrestore(i32* @card_lock, i32 %24)
  %26 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %27 = call i32 @_set_debug(%struct.inf_hw* %26)
  %28 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %29 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %32 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  store i32 %30, i32* %34, align 8
  %35 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %36 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %39 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 5
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @THIS_MODULE, align 4
  %42 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %43 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 4
  store i32 %41, i32* %44, align 8
  %45 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %46 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %45, i32 0, i32 4
  %47 = call i32 @spin_lock_init(i32* %46)
  %48 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %49 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %48, i32 0, i32 4
  %50 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %51 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  store i32* %49, i32** %53, align 8
  %54 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %55 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %54, i32 0, i32 4
  %56 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %57 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 3
  store i32* %55, i32** %58, align 8
  %59 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %60 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  store i8* bitcast (i32* @inf_ctrl to i8*), i8** %61, align 8
  %62 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %63 = call i32 @setup_io(%struct.inf_hw* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %1
  br label %129

67:                                               ; preds = %1
  %68 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %69 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %68, i32 0, i32 1
  %70 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %71 = call i64 @mISDNipac_init(%struct.TYPE_13__* %69, %struct.inf_hw* %70)
  %72 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %73 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  store i64 %71, i64* %77, align 8
  %78 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %79 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %67
  br label %129

87:                                               ; preds = %67
  %88 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %89 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %94 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %93, i32 0, i32 3
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %98 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @mISDN_register_device(%struct.TYPE_14__* %92, i32* %96, i32 %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %87
  br label %121

104:                                              ; preds = %87
  %105 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %106 = call i32 @init_irq(%struct.inf_hw* %105)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* @inf_cnt, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* @inf_cnt, align 4
  %112 = load i32, i32* @inf_cnt, align 4
  %113 = call i32 @pr_notice(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  store i32 0, i32* %2, align 4
  br label %140

114:                                              ; preds = %104
  %115 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %116 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = call i32 @mISDN_unregister_device(%struct.TYPE_14__* %119)
  br label %121

121:                                              ; preds = %114, %103
  %122 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %123 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  %125 = load i32 (%struct.TYPE_13__*)*, i32 (%struct.TYPE_13__*)** %124, align 8
  %126 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %127 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %126, i32 0, i32 1
  %128 = call i32 %125(%struct.TYPE_13__* %127)
  br label %129

129:                                              ; preds = %121, %86, %66
  %130 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %131 = call i32 @release_io(%struct.inf_hw* %130)
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @write_lock_irqsave(i32* @card_lock, i32 %132)
  %134 = load %struct.inf_hw*, %struct.inf_hw** %3, align 8
  %135 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %134, i32 0, i32 0
  %136 = call i32 @list_del(i32* %135)
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @write_unlock_irqrestore(i32* @card_lock, i32 %137)
  %139 = load i32, i32* %4, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %129, %109
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @snprintf(i32, i64, i8*, i8*, i32) #1

declare dso_local i32 @write_lock_irqsave(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @_set_debug(%struct.inf_hw*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @setup_io(%struct.inf_hw*) #1

declare dso_local i64 @mISDNipac_init(%struct.TYPE_13__*, %struct.inf_hw*) #1

declare dso_local i32 @mISDN_register_device(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @init_irq(%struct.inf_hw*) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @mISDN_unregister_device(%struct.TYPE_14__*) #1

declare dso_local i32 @release_io(%struct.inf_hw*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
