; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_super_90_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_super_90_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i32, i32, i32, i32, i32, %struct.TYPE_11__, i32, i64, i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i64, i32, i64, %struct.TYPE_12__, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@MD_SB_BYTES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MD_SB_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"md: invalid raid superblock magic on %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Bad version number %d.%d on %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"md: invalid superblock checksum on %s\0A\00", align 1
@LEVEL_MULTIPATH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"md: %s has different UUID to %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"md: %s has same UUID but different superblock to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_rdev*, %struct.md_rdev*, i32)* @super_90_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @super_90_load(%struct.md_rdev* %0, %struct.md_rdev* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca %struct.md_rdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  store %struct.md_rdev* %0, %struct.md_rdev** %5, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @BDEVNAME_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i32, i32* @BDEVNAME_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %24 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %25 = call i32 @calc_dev_sboffset(%struct.md_rdev* %24)
  %26 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %27 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %29 = load i32, i32* @MD_SB_BYTES, align 4
  %30 = call i32 @read_disk_sb(%struct.md_rdev* %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %207

35:                                               ; preds = %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %12, align 4
  %38 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %39 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bdevname(i32 %40, i8* %20)
  %42 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %43 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.TYPE_13__* @page_address(i32 %44)
  store %struct.TYPE_13__* %45, %struct.TYPE_13__** %11, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MD_SB_MAGIC, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %35
  %52 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %205

53:                                               ; preds = %35
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %53
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %61, 90
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 91
  br i1 %67, label %68, label %78

68:                                               ; preds = %63, %58, %53
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %73, i32 %76, i8* %20)
  br label %205

78:                                               ; preds = %63
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp sle i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %205

84:                                               ; preds = %78
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %86 = call i32 @calc_sb_csum(%struct.TYPE_13__* %85)
  %87 = call i64 @md_csum_fold(i32 %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @md_csum_fold(i32 %90)
  %92 = icmp ne i64 %87, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  br label %205

95:                                               ; preds = %84
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %100 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %99, i32 0, i32 9
  store i32 %98, i32* %100, align 8
  %101 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %102 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %101, i32 0, i32 8
  store i64 0, i64* %102, align 8
  %103 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %104 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %103, i32 0, i32 7
  store i64 0, i64* %104, align 8
  %105 = load i32, i32* @MD_SB_BYTES, align 4
  %106 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %107 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 8
  %108 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %109 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %108, i32 0, i32 5
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  store i32 -1, i32* %110, align 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @LEVEL_MULTIPATH, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %95
  %117 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %118 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %117, i32 0, i32 1
  store i32 -1, i32* %118, align 4
  br label %126

119:                                              ; preds = %95
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %125 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %119, %116
  %127 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %128 = icmp ne %struct.md_rdev* %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  store i32 1, i32* %12, align 4
  br label %167

130:                                              ; preds = %126
  %131 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %132 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call %struct.TYPE_13__* @page_address(i32 %133)
  store %struct.TYPE_13__* %134, %struct.TYPE_13__** %16, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %137 = call i32 @md_uuid_equal(%struct.TYPE_13__* %135, %struct.TYPE_13__* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %130
  %140 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %141 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @bdevname(i32 %142, i8* %23)
  %144 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %20, i32 %143)
  br label %205

145:                                              ; preds = %130
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %148 = call i32 @md_sb_equal(%struct.TYPE_13__* %146, %struct.TYPE_13__* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %145
  %151 = load %struct.md_rdev*, %struct.md_rdev** %6, align 8
  %152 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @bdevname(i32 %153, i8* %23)
  %155 = call i32 (i8*, i8*, ...) @pr_warn(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i8* %20, i32 %154)
  br label %205

156:                                              ; preds = %145
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %158 = call i64 @md_event(%struct.TYPE_13__* %157)
  store i64 %158, i64* %14, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %160 = call i64 @md_event(%struct.TYPE_13__* %159)
  store i64 %160, i64* %15, align 8
  %161 = load i64, i64* %14, align 8
  %162 = load i64, i64* %15, align 8
  %163 = icmp sgt i64 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  store i32 1, i32* %12, align 4
  br label %166

165:                                              ; preds = %156
  store i32 0, i32* %12, align 4
  br label %166

166:                                              ; preds = %165, %164
  br label %167

167:                                              ; preds = %166, %129
  %168 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %169 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %172 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 8
  %173 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %174 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = icmp uge i64 %176, 8589934592
  br i1 %177, label %178, label %186

178:                                              ; preds = %167
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = icmp sge i32 %181, 1
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %185 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %184, i32 0, i32 2
  store i32 -2, i32* %185, align 8
  br label %186

186:                                              ; preds = %183, %178, %167
  %187 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %188 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = trunc i64 %192 to i32
  %194 = mul nsw i32 %193, 2
  %195 = icmp slt i32 %189, %194
  br i1 %195, label %196, label %204

196:                                              ; preds = %186
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = icmp sge i32 %199, 1
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load i32, i32* @EINVAL, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %12, align 4
  br label %204

204:                                              ; preds = %201, %196, %186
  br label %205

205:                                              ; preds = %204, %150, %139, %93, %83, %68, %51
  %206 = load i32, i32* %12, align 4
  store i32 %206, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %207

207:                                              ; preds = %205, %33
  %208 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %208)
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @calc_dev_sboffset(%struct.md_rdev*) #2

declare dso_local i32 @read_disk_sb(%struct.md_rdev*, i32) #2

declare dso_local i32 @bdevname(i32, i8*) #2

declare dso_local %struct.TYPE_13__* @page_address(i32) #2

declare dso_local i32 @pr_warn(i8*, i8*, ...) #2

declare dso_local i64 @md_csum_fold(i32) #2

declare dso_local i32 @calc_sb_csum(%struct.TYPE_13__*) #2

declare dso_local i32 @md_uuid_equal(%struct.TYPE_13__*, %struct.TYPE_13__*) #2

declare dso_local i32 @md_sb_equal(%struct.TYPE_13__*, %struct.TYPE_13__*) #2

declare dso_local i64 @md_event(%struct.TYPE_13__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
