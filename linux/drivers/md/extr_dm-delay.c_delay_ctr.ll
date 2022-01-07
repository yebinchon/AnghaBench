; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-delay.c_delay_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-delay.c_delay_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8*, i32, i32, i32, %struct.delay_c* }
%struct.delay_c = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Requires exactly 3, 6 or 9 arguments\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Cannot allocate context\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@handle_delayed_timer = common dso_local global i32 0, align 4
@flush_expired_bios = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"kdelayd\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Couldn't start kdelayd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @delay_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delay_ctr(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.delay_c*, align 8
  %9 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 6
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 9
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %20 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %146

23:                                               ; preds = %15, %12, %3
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.delay_c* @kzalloc(i32 40, i32 %24)
  store %struct.delay_c* %25, %struct.delay_c** %8, align 8
  %26 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %27 = icmp ne %struct.delay_c* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %30 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8** %30, align 8
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %146

33:                                               ; preds = %23
  %34 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %35 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %36 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %35, i32 0, i32 4
  store %struct.delay_c* %34, %struct.delay_c** %36, align 8
  %37 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %38 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %37, i32 0, i32 9
  %39 = load i32, i32* @handle_delayed_timer, align 4
  %40 = call i32 @timer_setup(i32* %38, i32 %39, i32 0)
  %41 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %42 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %41, i32 0, i32 8
  %43 = load i32, i32* @flush_expired_bios, align 4
  %44 = call i32 @INIT_WORK(i32* %42, i32 %43)
  %45 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %46 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %45, i32 0, i32 7
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %49 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %48, i32 0, i32 6
  %50 = call i32 @mutex_init(i32* %49)
  %51 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %52 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %51, i32 0, i32 5
  %53 = call i32 @atomic_set(i32* %52, i32 1)
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %56 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %58 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %59 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %58, i32 0, i32 4
  %60 = load i8**, i8*** %7, align 8
  %61 = call i32 @delay_class_ctr(%struct.dm_target* %57, i32* %59, i8** %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %33
  br label %142

65:                                               ; preds = %33
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 3
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  %69 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %70 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %71 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %70, i32 0, i32 3
  %72 = load i8**, i8*** %7, align 8
  %73 = call i32 @delay_class_ctr(%struct.dm_target* %69, i32* %71, i8** %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %142

77:                                               ; preds = %68
  %78 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %79 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %80 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %79, i32 0, i32 2
  %81 = load i8**, i8*** %7, align 8
  %82 = call i32 @delay_class_ctr(%struct.dm_target* %78, i32* %80, i8** %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %142

86:                                               ; preds = %77
  br label %122

87:                                               ; preds = %65
  %88 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %89 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %90 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %89, i32 0, i32 3
  %91 = load i8**, i8*** %7, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 3
  %93 = call i32 @delay_class_ctr(%struct.dm_target* %88, i32* %90, i8** %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %142

97:                                               ; preds = %87
  %98 = load i32, i32* %6, align 4
  %99 = icmp eq i32 %98, 6
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %102 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %103 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %102, i32 0, i32 2
  %104 = load i8**, i8*** %7, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 3
  %106 = call i32 @delay_class_ctr(%struct.dm_target* %101, i32* %103, i8** %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %142

110:                                              ; preds = %100
  br label %122

111:                                              ; preds = %97
  %112 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %113 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %114 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %113, i32 0, i32 2
  %115 = load i8**, i8*** %7, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i64 6
  %117 = call i32 @delay_class_ctr(%struct.dm_target* %112, i32* %114, i8** %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  br label %142

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %110, %86
  %123 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %124 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %123, i32 0)
  %125 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %126 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.delay_c*, %struct.delay_c** %8, align 8
  %128 = getelementptr inbounds %struct.delay_c, %struct.delay_c* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %122
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %9, align 4
  %134 = call i32 @DMERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %142

135:                                              ; preds = %122
  %136 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %137 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %136, i32 0, i32 1
  store i32 1, i32* %137, align 8
  %138 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %139 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %138, i32 0, i32 2
  store i32 1, i32* %139, align 4
  %140 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %141 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %140, i32 0, i32 3
  store i32 4, i32* %141, align 8
  store i32 0, i32* %4, align 4
  br label %146

142:                                              ; preds = %131, %120, %109, %96, %85, %76, %64
  %143 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %144 = call i32 @delay_dtr(%struct.dm_target* %143)
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %142, %135, %28, %18
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local %struct.delay_c* @kzalloc(i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @delay_class_ctr(%struct.dm_target*, i32*, i8**) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @delay_dtr(%struct.dm_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
