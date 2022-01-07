; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon.c_extcon_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon.c_extcon_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extcon_dev = type { i32, %struct.TYPE_4__, i32, i32, i32* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"out of memory in extcon_set_state\0A\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"NAME=%s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"STATE=%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extcon_sync(%struct.extcon_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.extcon_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [120 x i8], align 16
  %7 = alloca [120 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca [3 x i8*], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.extcon_dev* %0, %struct.extcon_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %16 = icmp ne %struct.extcon_dev* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %164

20:                                               ; preds = %2
  %21 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @find_cable_index_by_id(%struct.extcon_dev* %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %3, align 4
  br label %164

28:                                               ; preds = %20
  %29 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %30 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %29, i32 0, i32 2
  %31 = load i64, i64* %14, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %34 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @BIT(i32 %36)
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %13, align 4
  %43 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %44 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %43, i32 0, i32 2
  %45 = load i64, i64* %14, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %48 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %55 = call i32 @raw_notifier_call_chain(i32* %52, i32 %53, %struct.extcon_dev* %54)
  %56 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %57 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %56, i32 0, i32 3
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %60 = call i32 @raw_notifier_call_chain(i32* %57, i32 %58, %struct.extcon_dev* %59)
  %61 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %62 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %61, i32 0, i32 2
  %63 = load i64, i64* %14, align 8
  %64 = call i32 @spin_lock_irqsave(i32* %62, i64 %63)
  %65 = load i32, i32* @GFP_ATOMIC, align 4
  %66 = call i64 @get_zeroed_page(i32 %65)
  %67 = inttoptr i64 %66 to i8*
  store i8* %67, i8** %8, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %85, label %70

70:                                               ; preds = %28
  %71 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %72 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %71, i32 0, i32 2
  %73 = load i64, i64* %14, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %76 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %75, i32 0, i32 1
  %77 = call i32 @dev_err(%struct.TYPE_4__* %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %78 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %79 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* @KOBJ_CHANGE, align 4
  %82 = call i32 @kobject_uevent(i32* %80, i32 %81)
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %164

85:                                               ; preds = %28
  %86 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %87 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %86, i32 0, i32 1
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @name_show(%struct.TYPE_4__* %87, i32* null, i8* %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %116

92:                                               ; preds = %85
  %93 = load i8*, i8** %8, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 10
  br i1 %100, label %101, label %107

101:                                              ; preds = %92
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  store i8 0, i8* %106, align 1
  br label %107

107:                                              ; preds = %101, %92
  %108 = getelementptr inbounds [120 x i8], [120 x i8]* %6, i64 0, i64 0
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 @snprintf(i8* %108, i32 120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %109)
  %111 = getelementptr inbounds [120 x i8], [120 x i8]* %6, i64 0, i64 0
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 %114
  store i8* %111, i8** %115, align 8
  br label %116

116:                                              ; preds = %107, %85
  %117 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %118 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %117, i32 0, i32 1
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @state_show(%struct.TYPE_4__* %118, i32* null, i8* %119)
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %147

123:                                              ; preds = %116
  %124 = load i8*, i8** %8, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 10
  br i1 %131, label %132, label %138

132:                                              ; preds = %123
  %133 = load i8*, i8** %8, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %133, i64 %136
  store i8 0, i8* %137, align 1
  br label %138

138:                                              ; preds = %132, %123
  %139 = getelementptr inbounds [120 x i8], [120 x i8]* %7, i64 0, i64 0
  %140 = load i8*, i8** %8, align 8
  %141 = call i32 @snprintf(i8* %139, i32 120, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %140)
  %142 = getelementptr inbounds [120 x i8], [120 x i8]* %7, i64 0, i64 0
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %10, align 4
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 %145
  store i8* %142, i8** %146, align 8
  br label %147

147:                                              ; preds = %138, %116
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 %149
  store i8* null, i8** %150, align 8
  %151 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %152 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %151, i32 0, i32 2
  %153 = load i64, i64* %14, align 8
  %154 = call i32 @spin_unlock_irqrestore(i32* %152, i64 %153)
  %155 = load %struct.extcon_dev*, %struct.extcon_dev** %4, align 8
  %156 = getelementptr inbounds %struct.extcon_dev, %struct.extcon_dev* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* @KOBJ_CHANGE, align 4
  %159 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 0
  %160 = call i32 @kobject_uevent_env(i32* %157, i32 %158, i8** %159)
  %161 = load i8*, i8** %8, align 8
  %162 = ptrtoint i8* %161 to i64
  %163 = call i32 @free_page(i64 %162)
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %147, %70, %26, %17
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @find_cable_index_by_id(%struct.extcon_dev*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @raw_notifier_call_chain(i32*, i32, %struct.extcon_dev*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @name_show(%struct.TYPE_4__*, i32*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @state_show(%struct.TYPE_4__*, i32*, i8*) #1

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
