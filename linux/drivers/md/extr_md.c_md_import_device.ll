; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_import_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_md_import_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (%struct.md_rdev*, i32*, i32)* }
%struct.md_rdev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rdev_ktype = common dso_local global i32 0, align 4
@BLOCK_SIZE_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"md: %s has zero or unknown size, marking faulty!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@super_types = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"md: %s does not have a valid v%d.%d superblock, not importing!\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"md: could not read %s's sb, not importing!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.md_rdev* (i32, i32, i32)* @md_import_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.md_rdev* @md_import_device(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.md_rdev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @BDEVNAME_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.md_rdev* @kzalloc(i32 16, i32 %18)
  store %struct.md_rdev* %19, %struct.md_rdev** %11, align 8
  %20 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %21 = icmp ne %struct.md_rdev* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.md_rdev* @ERR_PTR(i32 %24)
  store %struct.md_rdev* %25, %struct.md_rdev** %4, align 8
  store i32 1, i32* %13, align 4
  br label %122

26:                                               ; preds = %3
  %27 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %28 = call i32 @md_rdev_init(%struct.md_rdev* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %107

32:                                               ; preds = %26
  %33 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %34 = call i32 @alloc_disk_sb(%struct.md_rdev* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %107

38:                                               ; preds = %32
  %39 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, -2
  %43 = zext i1 %42 to i32
  %44 = call i32 @lock_rdev(%struct.md_rdev* %39, i32 %40, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %107

48:                                               ; preds = %38
  %49 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %50 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %49, i32 0, i32 1
  %51 = call i32 @kobject_init(i32* %50, i32* @rdev_ktype)
  %52 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %53 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @i_size_read(i32 %56)
  %58 = load i32, i32* @BLOCK_SIZE_BITS, align 4
  %59 = ashr i32 %57, %58
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %48
  %63 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %64 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = call i32 @bdevname(%struct.TYPE_4__* %65, i8* %17)
  %67 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %10, align 4
  br label %107

70:                                               ; preds = %48
  %71 = load i32, i32* %6, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %105

73:                                               ; preds = %70
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @super_types, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32 (%struct.md_rdev*, i32*, i32)*, i32 (%struct.md_rdev*, i32*, i32)** %78, align 8
  %80 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 %79(%struct.md_rdev* %80, i32* null, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %73
  %88 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %89 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = call i32 @bdevname(%struct.TYPE_4__* %90, i8* %17)
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %92, i32 %93)
  br label %107

95:                                               ; preds = %73
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %100 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = call i32 @bdevname(%struct.TYPE_4__* %101, i8* %17)
  %103 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  br label %107

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %70
  %106 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  store %struct.md_rdev* %106, %struct.md_rdev** %4, align 8
  store i32 1, i32* %13, align 4
  br label %122

107:                                              ; preds = %98, %87, %62, %47, %37, %31
  %108 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %109 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = icmp ne %struct.TYPE_4__* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %114 = call i32 @unlock_rdev(%struct.md_rdev* %113)
  br label %115

115:                                              ; preds = %112, %107
  %116 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %117 = call i32 @md_rdev_clear(%struct.md_rdev* %116)
  %118 = load %struct.md_rdev*, %struct.md_rdev** %11, align 8
  %119 = call i32 @kfree(%struct.md_rdev* %118)
  %120 = load i32, i32* %10, align 4
  %121 = call %struct.md_rdev* @ERR_PTR(i32 %120)
  store %struct.md_rdev* %121, %struct.md_rdev** %4, align 8
  store i32 1, i32* %13, align 4
  br label %122

122:                                              ; preds = %115, %105, %22
  %123 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  ret %struct.md_rdev* %124
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.md_rdev* @kzalloc(i32, i32) #2

declare dso_local %struct.md_rdev* @ERR_PTR(i32) #2

declare dso_local i32 @md_rdev_init(%struct.md_rdev*) #2

declare dso_local i32 @alloc_disk_sb(%struct.md_rdev*) #2

declare dso_local i32 @lock_rdev(%struct.md_rdev*, i32, i32) #2

declare dso_local i32 @kobject_init(i32*, i32*) #2

declare dso_local i32 @i_size_read(i32) #2

declare dso_local i32 @pr_warn(i8*, i32, ...) #2

declare dso_local i32 @bdevname(%struct.TYPE_4__*, i8*) #2

declare dso_local i32 @unlock_rdev(%struct.md_rdev*) #2

declare dso_local i32 @md_rdev_clear(%struct.md_rdev*) #2

declare dso_local i32 @kfree(%struct.md_rdev*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
