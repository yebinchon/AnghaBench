; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_set_bitmap_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_set_bitmap_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, %struct.TYPE_6__, %struct.bitmap*, %struct.TYPE_5__*, i64, i64, i32 }
%struct.TYPE_6__ = type { %struct.file*, i64 }
%struct.file = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.bitmap = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: error: failed to get bitmap file\0A\00", align 1
@EBADF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"%s: error: bitmap file must be a regular file\0A\00", align 1
@FMODE_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"%s: error: bitmap file must open for write\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"%s: error: bitmap file is already in use\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i32)* @set_bitmap_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_bitmap_file(%struct.mddev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.bitmap*, align 8
  %10 = alloca %struct.file*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.mddev*, %struct.mddev** %4, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %44

15:                                               ; preds = %2
  %16 = load %struct.mddev*, %struct.mddev** %4, align 8
  %17 = getelementptr inbounds %struct.mddev, %struct.mddev* %16, i32 0, i32 3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.mddev*, %struct.mddev** %4, align 8
  %24 = getelementptr inbounds %struct.mddev, %struct.mddev* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22, %15
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %210

30:                                               ; preds = %22
  %31 = load %struct.mddev*, %struct.mddev** %4, align 8
  %32 = getelementptr inbounds %struct.mddev, %struct.mddev* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.mddev*, %struct.mddev** %4, align 8
  %37 = getelementptr inbounds %struct.mddev, %struct.mddev* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35, %30
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %210

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %2
  %45 = load i32, i32* %5, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %130

47:                                               ; preds = %44
  %48 = load %struct.mddev*, %struct.mddev** %4, align 8
  %49 = getelementptr inbounds %struct.mddev, %struct.mddev* %48, i32 0, i32 2
  %50 = load %struct.bitmap*, %struct.bitmap** %49, align 8
  %51 = icmp ne %struct.bitmap* %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = load %struct.mddev*, %struct.mddev** %4, align 8
  %54 = getelementptr inbounds %struct.mddev, %struct.mddev* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.file*, %struct.file** %55, align 8
  %57 = icmp ne %struct.file* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %52, %47
  %59 = load i32, i32* @EEXIST, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %210

61:                                               ; preds = %52
  %62 = load i32, i32* %5, align 4
  %63 = call %struct.file* @fget(i32 %62)
  store %struct.file* %63, %struct.file** %8, align 8
  %64 = load %struct.file*, %struct.file** %8, align 8
  %65 = icmp eq %struct.file* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.mddev*, %struct.mddev** %4, align 8
  %68 = call i32 @mdname(%struct.mddev* %67)
  %69 = call i32 @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EBADF, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %210

72:                                               ; preds = %61
  %73 = load %struct.file*, %struct.file** %8, align 8
  %74 = getelementptr inbounds %struct.file, %struct.file* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.inode*, %struct.inode** %76, align 8
  store %struct.inode* %77, %struct.inode** %7, align 8
  %78 = load %struct.inode*, %struct.inode** %7, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @S_ISREG(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %72
  %84 = load %struct.mddev*, %struct.mddev** %4, align 8
  %85 = call i32 @mdname(%struct.mddev* %84)
  %86 = call i32 @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @EBADF, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %6, align 4
  br label %115

89:                                               ; preds = %72
  %90 = load %struct.file*, %struct.file** %8, align 8
  %91 = getelementptr inbounds %struct.file, %struct.file* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @FMODE_WRITE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %89
  %97 = load %struct.mddev*, %struct.mddev** %4, align 8
  %98 = call i32 @mdname(%struct.mddev* %97)
  %99 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EBADF, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %114

102:                                              ; preds = %89
  %103 = load %struct.inode*, %struct.inode** %7, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 0
  %105 = call i32 @atomic_read(i32* %104)
  %106 = icmp ne i32 %105, 1
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.mddev*, %struct.mddev** %4, align 8
  %109 = call i32 @mdname(%struct.mddev* %108)
  %110 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @EBUSY, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %107, %102
  br label %114

114:                                              ; preds = %113, %96
  br label %115

115:                                              ; preds = %114, %83
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load %struct.file*, %struct.file** %8, align 8
  %120 = call i32 @fput(%struct.file* %119)
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %3, align 4
  br label %210

122:                                              ; preds = %115
  %123 = load %struct.file*, %struct.file** %8, align 8
  %124 = load %struct.mddev*, %struct.mddev** %4, align 8
  %125 = getelementptr inbounds %struct.mddev, %struct.mddev* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  store %struct.file* %123, %struct.file** %126, align 8
  %127 = load %struct.mddev*, %struct.mddev** %4, align 8
  %128 = getelementptr inbounds %struct.mddev, %struct.mddev* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  store i64 0, i64* %129, align 8
  br label %139

130:                                              ; preds = %44
  %131 = load %struct.mddev*, %struct.mddev** %4, align 8
  %132 = getelementptr inbounds %struct.mddev, %struct.mddev* %131, i32 0, i32 2
  %133 = load %struct.bitmap*, %struct.bitmap** %132, align 8
  %134 = icmp eq %struct.bitmap* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i32, i32* @ENOENT, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %210

138:                                              ; preds = %130
  br label %139

139:                                              ; preds = %138, %122
  store i32 0, i32* %6, align 4
  %140 = load %struct.mddev*, %struct.mddev** %4, align 8
  %141 = getelementptr inbounds %struct.mddev, %struct.mddev* %140, i32 0, i32 3
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %141, align 8
  %143 = icmp ne %struct.TYPE_5__* %142, null
  br i1 %143, label %144, label %185

144:                                              ; preds = %139
  %145 = load i32, i32* %5, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %173

147:                                              ; preds = %144
  %148 = load %struct.mddev*, %struct.mddev** %4, align 8
  %149 = call %struct.bitmap* @md_bitmap_create(%struct.mddev* %148, i32 -1)
  store %struct.bitmap* %149, %struct.bitmap** %9, align 8
  %150 = load %struct.mddev*, %struct.mddev** %4, align 8
  %151 = call i32 @mddev_suspend(%struct.mddev* %150)
  %152 = load %struct.bitmap*, %struct.bitmap** %9, align 8
  %153 = call i32 @IS_ERR(%struct.bitmap* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %147
  %156 = load %struct.bitmap*, %struct.bitmap** %9, align 8
  %157 = load %struct.mddev*, %struct.mddev** %4, align 8
  %158 = getelementptr inbounds %struct.mddev, %struct.mddev* %157, i32 0, i32 2
  store %struct.bitmap* %156, %struct.bitmap** %158, align 8
  %159 = load %struct.mddev*, %struct.mddev** %4, align 8
  %160 = call i32 @md_bitmap_load(%struct.mddev* %159)
  store i32 %160, i32* %6, align 4
  br label %164

161:                                              ; preds = %147
  %162 = load %struct.bitmap*, %struct.bitmap** %9, align 8
  %163 = call i32 @PTR_ERR(%struct.bitmap* %162)
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %161, %155
  %165 = load i32, i32* %6, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load %struct.mddev*, %struct.mddev** %4, align 8
  %169 = call i32 @md_bitmap_destroy(%struct.mddev* %168)
  store i32 -1, i32* %5, align 4
  br label %170

170:                                              ; preds = %167, %164
  %171 = load %struct.mddev*, %struct.mddev** %4, align 8
  %172 = call i32 @mddev_resume(%struct.mddev* %171)
  br label %184

173:                                              ; preds = %144
  %174 = load i32, i32* %5, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %173
  %177 = load %struct.mddev*, %struct.mddev** %4, align 8
  %178 = call i32 @mddev_suspend(%struct.mddev* %177)
  %179 = load %struct.mddev*, %struct.mddev** %4, align 8
  %180 = call i32 @md_bitmap_destroy(%struct.mddev* %179)
  %181 = load %struct.mddev*, %struct.mddev** %4, align 8
  %182 = call i32 @mddev_resume(%struct.mddev* %181)
  br label %183

183:                                              ; preds = %176, %173
  br label %184

184:                                              ; preds = %183, %170
  br label %185

185:                                              ; preds = %184, %139
  %186 = load i32, i32* %5, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %208

188:                                              ; preds = %185
  %189 = load %struct.mddev*, %struct.mddev** %4, align 8
  %190 = getelementptr inbounds %struct.mddev, %struct.mddev* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load %struct.file*, %struct.file** %191, align 8
  store %struct.file* %192, %struct.file** %10, align 8
  %193 = load %struct.file*, %struct.file** %10, align 8
  %194 = icmp ne %struct.file* %193, null
  br i1 %194, label %195, label %207

195:                                              ; preds = %188
  %196 = load %struct.mddev*, %struct.mddev** %4, align 8
  %197 = getelementptr inbounds %struct.mddev, %struct.mddev* %196, i32 0, i32 0
  %198 = call i32 @spin_lock(i32* %197)
  %199 = load %struct.mddev*, %struct.mddev** %4, align 8
  %200 = getelementptr inbounds %struct.mddev, %struct.mddev* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  store %struct.file* null, %struct.file** %201, align 8
  %202 = load %struct.mddev*, %struct.mddev** %4, align 8
  %203 = getelementptr inbounds %struct.mddev, %struct.mddev* %202, i32 0, i32 0
  %204 = call i32 @spin_unlock(i32* %203)
  %205 = load %struct.file*, %struct.file** %10, align 8
  %206 = call i32 @fput(%struct.file* %205)
  br label %207

207:                                              ; preds = %195, %188
  br label %208

208:                                              ; preds = %207, %185
  %209 = load i32, i32* %6, align 4
  store i32 %209, i32* %3, align 4
  br label %210

210:                                              ; preds = %208, %135, %118, %66, %58, %40, %27
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local %struct.file* @fget(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mdname(%struct.mddev*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local %struct.bitmap* @md_bitmap_create(%struct.mddev*, i32) #1

declare dso_local i32 @mddev_suspend(%struct.mddev*) #1

declare dso_local i32 @IS_ERR(%struct.bitmap*) #1

declare dso_local i32 @md_bitmap_load(%struct.mddev*) #1

declare dso_local i32 @PTR_ERR(%struct.bitmap*) #1

declare dso_local i32 @md_bitmap_destroy(%struct.mddev*) #1

declare dso_local i32 @mddev_resume(%struct.mddev*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
