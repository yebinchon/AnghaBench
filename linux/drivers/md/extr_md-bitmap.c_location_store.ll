; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_location_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md-bitmap.c_location_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, i32, i32, i32, %struct.TYPE_4__, %struct.bitmap*, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_4__ = type { i64, i64, i64, %struct.file* }
%struct.file = type { i32 }
%struct.bitmap = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"file:\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MD_SB_CHANGE_DEVS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i8*, i64)* @location_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @location_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.bitmap*, align 8
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.mddev*, %struct.mddev** %5, align 8
  %13 = call i32 @mddev_lock(%struct.mddev* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %231

18:                                               ; preds = %3
  %19 = load %struct.mddev*, %struct.mddev** %5, align 8
  %20 = getelementptr inbounds %struct.mddev, %struct.mddev* %19, i32 0, i32 6
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %47

23:                                               ; preds = %18
  %24 = load %struct.mddev*, %struct.mddev** %5, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 6
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %221

33:                                               ; preds = %23
  %34 = load %struct.mddev*, %struct.mddev** %5, align 8
  %35 = getelementptr inbounds %struct.mddev, %struct.mddev* %34, i32 0, i32 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.mddev*, %struct.mddev** %5, align 8
  %40 = getelementptr inbounds %struct.mddev, %struct.mddev* %39, i32 0, i32 7
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %33
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %221

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %18
  %48 = load %struct.mddev*, %struct.mddev** %5, align 8
  %49 = getelementptr inbounds %struct.mddev, %struct.mddev* %48, i32 0, i32 5
  %50 = load %struct.bitmap*, %struct.bitmap** %49, align 8
  %51 = icmp ne %struct.bitmap* %50, null
  br i1 %51, label %64, label %52

52:                                               ; preds = %47
  %53 = load %struct.mddev*, %struct.mddev** %5, align 8
  %54 = getelementptr inbounds %struct.mddev, %struct.mddev* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load %struct.file*, %struct.file** %55, align 8
  %57 = icmp ne %struct.file* %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.mddev*, %struct.mddev** %5, align 8
  %60 = getelementptr inbounds %struct.mddev, %struct.mddev* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %103

64:                                               ; preds = %58, %52, %47
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @strncmp(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32, i32* @EBUSY, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  br label %221

71:                                               ; preds = %64
  %72 = load %struct.mddev*, %struct.mddev** %5, align 8
  %73 = getelementptr inbounds %struct.mddev, %struct.mddev* %72, i32 0, i32 6
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = icmp ne %struct.TYPE_3__* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.mddev*, %struct.mddev** %5, align 8
  %78 = call i32 @mddev_suspend(%struct.mddev* %77)
  %79 = load %struct.mddev*, %struct.mddev** %5, align 8
  %80 = call i32 @md_bitmap_destroy(%struct.mddev* %79)
  %81 = load %struct.mddev*, %struct.mddev** %5, align 8
  %82 = call i32 @mddev_resume(%struct.mddev* %81)
  br label %83

83:                                               ; preds = %76, %71
  %84 = load %struct.mddev*, %struct.mddev** %5, align 8
  %85 = getelementptr inbounds %struct.mddev, %struct.mddev* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  %87 = load %struct.mddev*, %struct.mddev** %5, align 8
  %88 = getelementptr inbounds %struct.mddev, %struct.mddev* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = load %struct.file*, %struct.file** %89, align 8
  %91 = icmp ne %struct.file* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %83
  %93 = load %struct.mddev*, %struct.mddev** %5, align 8
  %94 = getelementptr inbounds %struct.mddev, %struct.mddev* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = load %struct.file*, %struct.file** %95, align 8
  store %struct.file* %96, %struct.file** %9, align 8
  %97 = load %struct.mddev*, %struct.mddev** %5, align 8
  %98 = getelementptr inbounds %struct.mddev, %struct.mddev* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 3
  store %struct.file* null, %struct.file** %99, align 8
  %100 = load %struct.file*, %struct.file** %9, align 8
  %101 = call i32 @fput(%struct.file* %100)
  br label %102

102:                                              ; preds = %92, %83
  br label %206

103:                                              ; preds = %58
  %104 = load i8*, i8** %6, align 8
  %105 = call i64 @strncmp(i8* %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %205

108:                                              ; preds = %103
  %109 = load i8*, i8** %6, align 8
  %110 = call i64 @strncmp(i8* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %8, align 4
  br label %221

115:                                              ; preds = %108
  %116 = load i8*, i8** %6, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 43
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = call i32 @kstrtoll(i8* %123, i32 10, i64* %10)
  store i32 %124, i32* %8, align 4
  br label %128

125:                                              ; preds = %115
  %126 = load i8*, i8** %6, align 8
  %127 = call i32 @kstrtoll(i8* %126, i32 10, i64* %10)
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %125, %121
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %221

132:                                              ; preds = %128
  %133 = load i64, i64* %10, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %8, align 4
  br label %221

138:                                              ; preds = %132
  %139 = load %struct.mddev*, %struct.mddev** %5, align 8
  %140 = getelementptr inbounds %struct.mddev, %struct.mddev* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %159

144:                                              ; preds = %138
  %145 = load %struct.mddev*, %struct.mddev** %5, align 8
  %146 = getelementptr inbounds %struct.mddev, %struct.mddev* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %144
  %150 = load i64, i64* %10, align 8
  %151 = load %struct.mddev*, %struct.mddev** %5, align 8
  %152 = getelementptr inbounds %struct.mddev, %struct.mddev* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %150, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %8, align 4
  br label %221

159:                                              ; preds = %149, %144, %138
  %160 = load i64, i64* %10, align 8
  %161 = load %struct.mddev*, %struct.mddev** %5, align 8
  %162 = getelementptr inbounds %struct.mddev, %struct.mddev* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  store i64 %160, i64* %163, align 8
  %164 = load %struct.mddev*, %struct.mddev** %5, align 8
  %165 = getelementptr inbounds %struct.mddev, %struct.mddev* %164, i32 0, i32 6
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = icmp ne %struct.TYPE_3__* %166, null
  br i1 %167, label %168, label %203

168:                                              ; preds = %159
  %169 = load %struct.mddev*, %struct.mddev** %5, align 8
  %170 = call %struct.bitmap* @md_bitmap_create(%struct.mddev* %169, i32 -1)
  store %struct.bitmap* %170, %struct.bitmap** %11, align 8
  %171 = load %struct.mddev*, %struct.mddev** %5, align 8
  %172 = call i32 @mddev_suspend(%struct.mddev* %171)
  %173 = load %struct.bitmap*, %struct.bitmap** %11, align 8
  %174 = call i64 @IS_ERR(%struct.bitmap* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %168
  %177 = load %struct.bitmap*, %struct.bitmap** %11, align 8
  %178 = call i32 @PTR_ERR(%struct.bitmap* %177)
  store i32 %178, i32* %8, align 4
  br label %192

179:                                              ; preds = %168
  %180 = load %struct.bitmap*, %struct.bitmap** %11, align 8
  %181 = load %struct.mddev*, %struct.mddev** %5, align 8
  %182 = getelementptr inbounds %struct.mddev, %struct.mddev* %181, i32 0, i32 5
  store %struct.bitmap* %180, %struct.bitmap** %182, align 8
  %183 = load %struct.mddev*, %struct.mddev** %5, align 8
  %184 = call i32 @md_bitmap_load(%struct.mddev* %183)
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %179
  %188 = load %struct.mddev*, %struct.mddev** %5, align 8
  %189 = getelementptr inbounds %struct.mddev, %struct.mddev* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  store i64 0, i64* %190, align 8
  br label %191

191:                                              ; preds = %187, %179
  br label %192

192:                                              ; preds = %191, %176
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %192
  %196 = load %struct.mddev*, %struct.mddev** %5, align 8
  %197 = call i32 @md_bitmap_destroy(%struct.mddev* %196)
  %198 = load %struct.mddev*, %struct.mddev** %5, align 8
  %199 = call i32 @mddev_resume(%struct.mddev* %198)
  br label %221

200:                                              ; preds = %192
  %201 = load %struct.mddev*, %struct.mddev** %5, align 8
  %202 = call i32 @mddev_resume(%struct.mddev* %201)
  br label %203

203:                                              ; preds = %200, %159
  br label %204

204:                                              ; preds = %203
  br label %205

205:                                              ; preds = %204, %107
  br label %206

206:                                              ; preds = %205, %102
  %207 = load %struct.mddev*, %struct.mddev** %5, align 8
  %208 = getelementptr inbounds %struct.mddev, %struct.mddev* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %220, label %211

211:                                              ; preds = %206
  %212 = load i32, i32* @MD_SB_CHANGE_DEVS, align 4
  %213 = load %struct.mddev*, %struct.mddev** %5, align 8
  %214 = getelementptr inbounds %struct.mddev, %struct.mddev* %213, i32 0, i32 2
  %215 = call i32 @set_bit(i32 %212, i32* %214)
  %216 = load %struct.mddev*, %struct.mddev** %5, align 8
  %217 = getelementptr inbounds %struct.mddev, %struct.mddev* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @md_wakeup_thread(i32 %218)
  br label %220

220:                                              ; preds = %211, %206
  store i32 0, i32* %8, align 4
  br label %221

221:                                              ; preds = %220, %195, %156, %135, %131, %112, %68, %43, %30
  %222 = load %struct.mddev*, %struct.mddev** %5, align 8
  %223 = call i32 @mddev_unlock(%struct.mddev* %222)
  %224 = load i32, i32* %8, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %221
  %227 = load i32, i32* %8, align 4
  store i32 %227, i32* %4, align 4
  br label %231

228:                                              ; preds = %221
  %229 = load i64, i64* %7, align 8
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %4, align 4
  br label %231

231:                                              ; preds = %228, %226, %16
  %232 = load i32, i32* %4, align 4
  ret i32 %232
}

declare dso_local i32 @mddev_lock(%struct.mddev*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @mddev_suspend(%struct.mddev*) #1

declare dso_local i32 @md_bitmap_destroy(%struct.mddev*) #1

declare dso_local i32 @mddev_resume(%struct.mddev*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @kstrtoll(i8*, i32, i64*) #1

declare dso_local %struct.bitmap* @md_bitmap_create(%struct.mddev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.bitmap*) #1

declare dso_local i32 @PTR_ERR(%struct.bitmap*) #1

declare dso_local i32 @md_bitmap_load(%struct.mddev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @mddev_unlock(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
