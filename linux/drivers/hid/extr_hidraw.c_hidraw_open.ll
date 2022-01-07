; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hidraw.c_hidraw_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hidraw.c_hidraw_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidraw = type { i32, i32, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.file = type { %struct.hidraw_list* }
%struct.hidraw_list = type { i32, i32, %struct.hidraw* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@minors_lock = common dso_local global i32 0, align 4
@hidraw_table = common dso_local global %struct.hidraw** null, align 8
@ENODEV = common dso_local global i32 0, align 4
@PM_HINT_FULLON = common dso_local global i32 0, align 4
@PM_HINT_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @hidraw_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidraw_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hidraw*, align 8
  %7 = alloca %struct.hidraw_list*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call i32 @iminor(%struct.inode* %10)
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.hidraw_list* @kzalloc(i32 16, i32 %12)
  store %struct.hidraw_list* %13, %struct.hidraw_list** %7, align 8
  %14 = icmp ne %struct.hidraw_list* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %9, align 4
  br label %121

18:                                               ; preds = %2
  %19 = call i32 @mutex_lock(i32* @minors_lock)
  %20 = load %struct.hidraw**, %struct.hidraw*** @hidraw_table, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.hidraw*, %struct.hidraw** %20, i64 %22
  %24 = load %struct.hidraw*, %struct.hidraw** %23, align 8
  %25 = icmp ne %struct.hidraw* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load %struct.hidraw**, %struct.hidraw*** @hidraw_table, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.hidraw*, %struct.hidraw** %27, i64 %29
  %31 = load %struct.hidraw*, %struct.hidraw** %30, align 8
  %32 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26, %18
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %119

38:                                               ; preds = %26
  %39 = load %struct.hidraw**, %struct.hidraw*** @hidraw_table, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.hidraw*, %struct.hidraw** %39, i64 %41
  %43 = load %struct.hidraw*, %struct.hidraw** %42, align 8
  store %struct.hidraw* %43, %struct.hidraw** %6, align 8
  %44 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %45 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %80, label %49

49:                                               ; preds = %38
  %50 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %51 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PM_HINT_FULLON, align 4
  %54 = call i32 @hid_hw_power(i32 %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %49
  %58 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %59 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 4
  br label %119

62:                                               ; preds = %49
  %63 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %64 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @hid_hw_open(i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %62
  %70 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %71 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @PM_HINT_NORMAL, align 4
  %74 = call i32 @hid_hw_power(i32 %72, i32 %73)
  %75 = load %struct.hidraw*, %struct.hidraw** %6, align 8
  %76 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %76, align 4
  br label %119

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79, %38
  %81 = load %struct.hidraw**, %struct.hidraw*** @hidraw_table, align 8
  %82 = load i32, i32* %5, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.hidraw*, %struct.hidraw** %81, i64 %83
  %85 = load %struct.hidraw*, %struct.hidraw** %84, align 8
  %86 = load %struct.hidraw_list*, %struct.hidraw_list** %7, align 8
  %87 = getelementptr inbounds %struct.hidraw_list, %struct.hidraw_list* %86, i32 0, i32 2
  store %struct.hidraw* %85, %struct.hidraw** %87, align 8
  %88 = load %struct.hidraw_list*, %struct.hidraw_list** %7, align 8
  %89 = getelementptr inbounds %struct.hidraw_list, %struct.hidraw_list* %88, i32 0, i32 1
  %90 = call i32 @mutex_init(i32* %89)
  %91 = load %struct.hidraw**, %struct.hidraw*** @hidraw_table, align 8
  %92 = load i32, i32* %5, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.hidraw*, %struct.hidraw** %91, i64 %93
  %95 = load %struct.hidraw*, %struct.hidraw** %94, align 8
  %96 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %95, i32 0, i32 0
  %97 = load i64, i64* %8, align 8
  %98 = call i32 @spin_lock_irqsave(i32* %96, i64 %97)
  %99 = load %struct.hidraw_list*, %struct.hidraw_list** %7, align 8
  %100 = getelementptr inbounds %struct.hidraw_list, %struct.hidraw_list* %99, i32 0, i32 0
  %101 = load %struct.hidraw**, %struct.hidraw*** @hidraw_table, align 8
  %102 = load i32, i32* %5, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.hidraw*, %struct.hidraw** %101, i64 %103
  %105 = load %struct.hidraw*, %struct.hidraw** %104, align 8
  %106 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %105, i32 0, i32 1
  %107 = call i32 @list_add_tail(i32* %100, i32* %106)
  %108 = load %struct.hidraw**, %struct.hidraw*** @hidraw_table, align 8
  %109 = load i32, i32* %5, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.hidraw*, %struct.hidraw** %108, i64 %110
  %112 = load %struct.hidraw*, %struct.hidraw** %111, align 8
  %113 = getelementptr inbounds %struct.hidraw, %struct.hidraw* %112, i32 0, i32 0
  %114 = load i64, i64* %8, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* %113, i64 %114)
  %116 = load %struct.hidraw_list*, %struct.hidraw_list** %7, align 8
  %117 = load %struct.file*, %struct.file** %4, align 8
  %118 = getelementptr inbounds %struct.file, %struct.file* %117, i32 0, i32 0
  store %struct.hidraw_list* %116, %struct.hidraw_list** %118, align 8
  br label %119

119:                                              ; preds = %80, %69, %57, %35
  %120 = call i32 @mutex_unlock(i32* @minors_lock)
  br label %121

121:                                              ; preds = %119, %15
  %122 = load i32, i32* %9, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load %struct.hidraw_list*, %struct.hidraw_list** %7, align 8
  %126 = call i32 @kfree(%struct.hidraw_list* %125)
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i32, i32* %9, align 4
  ret i32 %128
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.hidraw_list* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hid_hw_power(i32, i32) #1

declare dso_local i32 @hid_hw_open(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.hidraw_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
