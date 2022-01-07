; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_hot_add_disk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_hot_add_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.md_rdev = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"%s: HOT_ADD may only be used with version-0 superblocks.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: personality does not support diskops!\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"md: error, md_import_device() returned %ld\0A\00", align 1
@Faulty = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"md: can not hot-add faulty %s disk to %s!\0A\00", align 1
@In_sync = common dso_local global i32 0, align 4
@MD_SB_CHANGE_DEVS = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i32)* @hot_add_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hot_add_disk(%struct.mddev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.md_rdev*, align 8
  %10 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @BDEVNAME_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.mddev*, %struct.mddev** %4, align 8
  %16 = getelementptr inbounds %struct.mddev, %struct.mddev* %15, i32 0, i32 5
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %143

22:                                               ; preds = %2
  %23 = load %struct.mddev*, %struct.mddev** %4, align 8
  %24 = getelementptr inbounds %struct.mddev, %struct.mddev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.mddev*, %struct.mddev** %4, align 8
  %29 = call i32 @mdname(%struct.mddev* %28)
  %30 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %143

33:                                               ; preds = %22
  %34 = load %struct.mddev*, %struct.mddev** %4, align 8
  %35 = getelementptr inbounds %struct.mddev, %struct.mddev* %34, i32 0, i32 5
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %33
  %41 = load %struct.mddev*, %struct.mddev** %4, align 8
  %42 = call i32 @mdname(%struct.mddev* %41)
  %43 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %143

46:                                               ; preds = %33
  %47 = load i32, i32* %5, align 4
  %48 = call %struct.md_rdev* @md_import_device(i32 %47, i32 -1, i32 0)
  store %struct.md_rdev* %48, %struct.md_rdev** %9, align 8
  %49 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %50 = call i64 @IS_ERR(%struct.md_rdev* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %54 = call i32 @PTR_ERR(%struct.md_rdev* %53)
  %55 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %143

58:                                               ; preds = %46
  %59 = load %struct.mddev*, %struct.mddev** %4, align 8
  %60 = getelementptr inbounds %struct.mddev, %struct.mddev* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %65 = call i32 @calc_dev_sboffset(%struct.md_rdev* %64)
  %66 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %67 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  br label %78

68:                                               ; preds = %58
  %69 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %70 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %69, i32 0, i32 6
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @i_size_read(i32 %73)
  %75 = sdiv i32 %74, 512
  %76 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %77 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %68, %63
  %79 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %80 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %83 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @Faulty, align 4
  %85 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %86 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %85, i32 0, i32 5
  %87 = call i64 @test_bit(i32 %84, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %78
  %90 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %91 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %90, i32 0, i32 6
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = call i32 @bdevname(%struct.TYPE_4__* %92, i8* %14)
  %94 = load %struct.mddev*, %struct.mddev** %4, align 8
  %95 = call i32 @mdname(%struct.mddev* %94)
  %96 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %93, i32 %95)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %8, align 4
  br label %139

99:                                               ; preds = %78
  %100 = load i32, i32* @In_sync, align 4
  %101 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %102 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %101, i32 0, i32 5
  %103 = call i32 @clear_bit(i32 %100, i32* %102)
  %104 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %105 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %104, i32 0, i32 2
  store i32 -1, i32* %105, align 8
  %106 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %107 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %106, i32 0, i32 3
  store i32 -1, i32* %107, align 4
  %108 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %109 = load %struct.mddev*, %struct.mddev** %4, align 8
  %110 = call i32 @bind_rdev_to_array(%struct.md_rdev* %108, %struct.mddev* %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %99
  br label %139

114:                                              ; preds = %99
  %115 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %116 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %115, i32 0, i32 4
  store i32 -1, i32* %116, align 8
  %117 = load i32, i32* @MD_SB_CHANGE_DEVS, align 4
  %118 = load %struct.mddev*, %struct.mddev** %4, align 8
  %119 = getelementptr inbounds %struct.mddev, %struct.mddev* %118, i32 0, i32 3
  %120 = call i32 @set_bit(i32 %117, i32* %119)
  %121 = load %struct.mddev*, %struct.mddev** %4, align 8
  %122 = getelementptr inbounds %struct.mddev, %struct.mddev* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %114
  %126 = load %struct.mddev*, %struct.mddev** %4, align 8
  %127 = call i32 @md_update_sb(%struct.mddev* %126, i32 1)
  br label %128

128:                                              ; preds = %125, %114
  %129 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %130 = load %struct.mddev*, %struct.mddev** %4, align 8
  %131 = getelementptr inbounds %struct.mddev, %struct.mddev* %130, i32 0, i32 2
  %132 = call i32 @set_bit(i32 %129, i32* %131)
  %133 = load %struct.mddev*, %struct.mddev** %4, align 8
  %134 = getelementptr inbounds %struct.mddev, %struct.mddev* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @md_wakeup_thread(i32 %135)
  %137 = load %struct.mddev*, %struct.mddev** %4, align 8
  %138 = call i32 @md_new_event(%struct.mddev* %137)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %143

139:                                              ; preds = %113, %89
  %140 = load %struct.md_rdev*, %struct.md_rdev** %9, align 8
  %141 = call i32 @export_rdev(%struct.md_rdev* %140)
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %143

143:                                              ; preds = %139, %128, %52, %40, %27, %19
  %144 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %144)
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pr_warn(i8*, i32, ...) #2

declare dso_local i32 @mdname(%struct.mddev*) #2

declare dso_local %struct.md_rdev* @md_import_device(i32, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.md_rdev*) #2

declare dso_local i32 @PTR_ERR(%struct.md_rdev*) #2

declare dso_local i32 @calc_dev_sboffset(%struct.md_rdev*) #2

declare dso_local i32 @i_size_read(i32) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @bdevname(%struct.TYPE_4__*, i8*) #2

declare dso_local i32 @clear_bit(i32, i32*) #2

declare dso_local i32 @bind_rdev_to_array(%struct.md_rdev*, %struct.mddev*) #2

declare dso_local i32 @set_bit(i32, i32*) #2

declare dso_local i32 @md_update_sb(%struct.mddev*, i32) #2

declare dso_local i32 @md_wakeup_thread(i32) #2

declare dso_local i32 @md_new_event(%struct.mddev*) #2

declare dso_local i32 @export_rdev(%struct.md_rdev*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
