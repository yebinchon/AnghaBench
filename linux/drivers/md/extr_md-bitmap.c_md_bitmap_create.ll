; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_md_bitmap_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitmap = type { i32, i32, %struct.TYPE_8__, i32, %struct.TYPE_6__, i32*, %struct.mddev*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.file* }
%struct.file = type { i32 }
%struct.mddev = type { %struct.TYPE_7__, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i64, i32, i32, i64, %struct.file* }
%struct.TYPE_5__ = type { %struct.kernfs_node* }
%struct.kernfs_node = type { i32 }

@MD_HAS_JOURNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"md/raid:%s: array with journal cannot have bitmap\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"bitmap\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"can_clear\00", align 1
@MD_ARRAY_FIRST_USE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"created bitmap (%lu pages) for device %s\0A\00", align 1
@BITMAP_WRITE_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bitmap* @md_bitmap_create(%struct.mddev* %0, i32 %1) #0 {
  %3 = alloca %struct.bitmap*, align 8
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bitmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kernfs_node*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.mddev*, %struct.mddev** %4, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.mddev*, %struct.mddev** %4, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 4
  %17 = load %struct.file*, %struct.file** %16, align 8
  store %struct.file* %17, %struct.file** %8, align 8
  store %struct.kernfs_node* null, %struct.kernfs_node** %10, align 8
  %18 = call i32 @BUILD_BUG_ON(i32 1)
  %19 = load %struct.file*, %struct.file** %8, align 8
  %20 = icmp ne %struct.file* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.mddev*, %struct.mddev** %4, align 8
  %23 = getelementptr inbounds %struct.mddev, %struct.mddev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %21, %2
  %28 = phi i1 [ false, %2 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load i32, i32* @MD_HAS_JOURNAL, align 4
  %32 = load %struct.mddev*, %struct.mddev** %4, align 8
  %33 = getelementptr inbounds %struct.mddev, %struct.mddev* %32, i32 0, i32 1
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load %struct.mddev*, %struct.mddev** %4, align 8
  %38 = call i32 @mdname(%struct.mddev* %37)
  %39 = call i32 @pr_notice(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.bitmap* @ERR_PTR(i32 %41)
  store %struct.bitmap* %42, %struct.bitmap** %3, align 8
  br label %195

43:                                               ; preds = %27
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.bitmap* @kzalloc(i32 64, i32 %44)
  store %struct.bitmap* %45, %struct.bitmap** %6, align 8
  %46 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %47 = icmp ne %struct.bitmap* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.bitmap* @ERR_PTR(i32 %50)
  store %struct.bitmap* %51, %struct.bitmap** %3, align 8
  br label %195

52:                                               ; preds = %43
  %53 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %54 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = call i32 @spin_lock_init(i32* %55)
  %57 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %58 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %57, i32 0, i32 10
  %59 = call i32 @atomic_set(i32* %58, i32 0)
  %60 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %61 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %60, i32 0, i32 9
  %62 = call i32 @init_waitqueue_head(i32* %61)
  %63 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %64 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %63, i32 0, i32 8
  %65 = call i32 @init_waitqueue_head(i32* %64)
  %66 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %67 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %66, i32 0, i32 7
  %68 = call i32 @init_waitqueue_head(i32* %67)
  %69 = load %struct.mddev*, %struct.mddev** %4, align 8
  %70 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %71 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %70, i32 0, i32 6
  store %struct.mddev* %69, %struct.mddev** %71, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %74 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.mddev*, %struct.mddev** %4, align 8
  %76 = getelementptr inbounds %struct.mddev, %struct.mddev* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.kernfs_node*, %struct.kernfs_node** %77, align 8
  %79 = icmp ne %struct.kernfs_node* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %52
  %81 = load %struct.mddev*, %struct.mddev** %4, align 8
  %82 = getelementptr inbounds %struct.mddev, %struct.mddev* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load %struct.kernfs_node*, %struct.kernfs_node** %83, align 8
  %85 = call i8* @sysfs_get_dirent(%struct.kernfs_node* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %86 = bitcast i8* %85 to %struct.kernfs_node*
  store %struct.kernfs_node* %86, %struct.kernfs_node** %10, align 8
  br label %87

87:                                               ; preds = %80, %52
  %88 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %89 = icmp ne %struct.kernfs_node* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %92 = call i8* @sysfs_get_dirent(%struct.kernfs_node* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %93 = bitcast i8* %92 to i32*
  %94 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %95 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %94, i32 0, i32 5
  store i32* %93, i32** %95, align 8
  %96 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %97 = call i32 @sysfs_put(%struct.kernfs_node* %96)
  br label %101

98:                                               ; preds = %87
  %99 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %100 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %99, i32 0, i32 5
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %98, %90
  %102 = load %struct.file*, %struct.file** %8, align 8
  %103 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %104 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store %struct.file* %102, %struct.file** %105, align 8
  %106 = load %struct.file*, %struct.file** %8, align 8
  %107 = icmp ne %struct.file* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.file*, %struct.file** %8, align 8
  %110 = call i32 @get_file(%struct.file* %109)
  %111 = load %struct.file*, %struct.file** %8, align 8
  %112 = call i32 @vfs_fsync(%struct.file* %111, i32 1)
  br label %113

113:                                              ; preds = %108, %101
  %114 = load %struct.mddev*, %struct.mddev** %4, align 8
  %115 = getelementptr inbounds %struct.mddev, %struct.mddev* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %113
  %120 = load i32, i32* @MD_ARRAY_FIRST_USE, align 4
  %121 = load %struct.mddev*, %struct.mddev** %4, align 8
  %122 = getelementptr inbounds %struct.mddev, %struct.mddev* %121, i32 0, i32 1
  %123 = call i64 @test_and_clear_bit(i32 %120, i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %127 = call i32 @md_bitmap_new_disk_sb(%struct.bitmap* %126)
  store i32 %127, i32* %9, align 4
  br label %131

128:                                              ; preds = %119
  %129 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %130 = call i32 @md_bitmap_read_sb(%struct.bitmap* %129)
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %128, %125
  br label %148

132:                                              ; preds = %113
  store i32 0, i32* %9, align 4
  %133 = load %struct.mddev*, %struct.mddev** %4, align 8
  %134 = getelementptr inbounds %struct.mddev, %struct.mddev* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %132
  %139 = load %struct.mddev*, %struct.mddev** %4, align 8
  %140 = getelementptr inbounds %struct.mddev, %struct.mddev* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %138, %132
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %9, align 4
  br label %147

147:                                              ; preds = %144, %138
  br label %148

148:                                              ; preds = %147, %131
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  br label %190

152:                                              ; preds = %148
  %153 = load i32, i32* @jiffies, align 4
  %154 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %155 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 8
  %156 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %157 = load i32, i32* %7, align 4
  %158 = load %struct.mddev*, %struct.mddev** %4, align 8
  %159 = getelementptr inbounds %struct.mddev, %struct.mddev* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @md_bitmap_resize(%struct.bitmap* %156, i32 %157, i32 %161, i32 1)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %152
  br label %190

166:                                              ; preds = %152
  %167 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %168 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %172 = call i32 @bmname(%struct.bitmap* %171)
  %173 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %170, i32 %172)
  %174 = load i32, i32* @BITMAP_WRITE_ERROR, align 4
  %175 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %176 = getelementptr inbounds %struct.bitmap, %struct.bitmap* %175, i32 0, i32 1
  %177 = call i64 @test_bit(i32 %174, i32* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %166
  %180 = load i32, i32* @EIO, align 4
  %181 = sub nsw i32 0, %180
  br label %183

182:                                              ; preds = %166
  br label %183

183:                                              ; preds = %182, %179
  %184 = phi i32 [ %181, %179 ], [ 0, %182 ]
  store i32 %184, i32* %9, align 4
  %185 = load i32, i32* %9, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  br label %190

188:                                              ; preds = %183
  %189 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  store %struct.bitmap* %189, %struct.bitmap** %3, align 8
  br label %195

190:                                              ; preds = %187, %165, %151
  %191 = load %struct.bitmap*, %struct.bitmap** %6, align 8
  %192 = call i32 @md_bitmap_free(%struct.bitmap* %191)
  %193 = load i32, i32* %9, align 4
  %194 = call %struct.bitmap* @ERR_PTR(i32 %193)
  store %struct.bitmap* %194, %struct.bitmap** %3, align 8
  br label %195

195:                                              ; preds = %190, %188, %48, %36
  %196 = load %struct.bitmap*, %struct.bitmap** %3, align 8
  ret %struct.bitmap* %196
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @mdname(%struct.mddev*) #1

declare dso_local %struct.bitmap* @ERR_PTR(i32) #1

declare dso_local %struct.bitmap* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i8* @sysfs_get_dirent(%struct.kernfs_node*, i8*) #1

declare dso_local i32 @sysfs_put(%struct.kernfs_node*) #1

declare dso_local i32 @get_file(%struct.file*) #1

declare dso_local i32 @vfs_fsync(%struct.file*, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @md_bitmap_new_disk_sb(%struct.bitmap*) #1

declare dso_local i32 @md_bitmap_read_sb(%struct.bitmap*) #1

declare dso_local i32 @md_bitmap_resize(%struct.bitmap*, i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @bmname(%struct.bitmap*) #1

declare dso_local i32 @md_bitmap_free(%struct.bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
