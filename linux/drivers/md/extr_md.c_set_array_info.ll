; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_set_array_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_set_array_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.mddev = type { i64, i32, i64, i32, i64, i32, i32, i64, i32, i32, i64, i64, i32, i8*, %struct.TYPE_6__, i64, i64, i32, i64, i8*, i64*, i8*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i64, i64, i64, i32, i32, i32, i32, i64, i32, i32 }

@super_types = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"md: superblock version %d not known\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MD_MAJOR_VERSION = common dso_local global i64 0, align 8
@MD_MINOR_VERSION = common dso_local global i32 0, align 4
@MD_PATCHLEVEL_VERSION = common dso_local global i32 0, align 4
@MD_SB_CLEAN = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i8* null, align 8
@MD_SB_DISKS = common dso_local global i32 0, align 4
@MD_SB_CHANGE_DEVS = common dso_local global i32 0, align 4
@MD_SB_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, %struct.TYPE_7__*)* @set_array_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_array_info(%struct.mddev* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mddev*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.mddev* %0, %struct.mddev** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %65

10:                                               ; preds = %2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %10
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @super_types, align 8
  %20 = call i64 @ARRAY_SIZE(%struct.TYPE_8__* %19)
  %21 = icmp uge i64 %18, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %15
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @super_types, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %22, %15, %10
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %200

38:                                               ; preds = %22
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mddev*, %struct.mddev** %4, align 8
  %43 = getelementptr inbounds %struct.mddev, %struct.mddev* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mddev*, %struct.mddev** %4, align 8
  %48 = getelementptr inbounds %struct.mddev, %struct.mddev* %47, i32 0, i32 23
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mddev*, %struct.mddev** %4, align 8
  %53 = getelementptr inbounds %struct.mddev, %struct.mddev* %52, i32 0, i32 22
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load %struct.mddev*, %struct.mddev** %4, align 8
  %61 = getelementptr inbounds %struct.mddev, %struct.mddev* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = call i8* (...) @ktime_get_real_seconds()
  %63 = load %struct.mddev*, %struct.mddev** %4, align 8
  %64 = getelementptr inbounds %struct.mddev, %struct.mddev* %63, i32 0, i32 21
  store i8* %62, i8** %64, align 8
  store i32 0, i32* %3, align 4
  br label %200

65:                                               ; preds = %2
  %66 = load i64, i64* @MD_MAJOR_VERSION, align 8
  %67 = load %struct.mddev*, %struct.mddev** %4, align 8
  %68 = getelementptr inbounds %struct.mddev, %struct.mddev* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load i32, i32* @MD_MINOR_VERSION, align 4
  %70 = load %struct.mddev*, %struct.mddev** %4, align 8
  %71 = getelementptr inbounds %struct.mddev, %struct.mddev* %70, i32 0, i32 23
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @MD_PATCHLEVEL_VERSION, align 4
  %73 = load %struct.mddev*, %struct.mddev** %4, align 8
  %74 = getelementptr inbounds %struct.mddev, %struct.mddev* %73, i32 0, i32 22
  store i32 %72, i32* %74, align 8
  %75 = call i8* (...) @ktime_get_real_seconds()
  %76 = load %struct.mddev*, %struct.mddev** %4, align 8
  %77 = getelementptr inbounds %struct.mddev, %struct.mddev* %76, i32 0, i32 21
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.mddev*, %struct.mddev** %4, align 8
  %82 = getelementptr inbounds %struct.mddev, %struct.mddev* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load %struct.mddev*, %struct.mddev** %4, align 8
  %84 = getelementptr inbounds %struct.mddev, %struct.mddev* %83, i32 0, i32 20
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 0
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 7
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = mul nsw i32 2, %90
  %92 = load %struct.mddev*, %struct.mddev** %4, align 8
  %93 = getelementptr inbounds %struct.mddev, %struct.mddev* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.mddev*, %struct.mddev** %4, align 8
  %98 = getelementptr inbounds %struct.mddev, %struct.mddev* %97, i32 0, i32 4
  store i64 %96, i64* %98, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @MD_SB_CLEAN, align 4
  %103 = shl i32 1, %102
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %65
  %107 = load i8*, i8** @MaxSector, align 8
  %108 = load %struct.mddev*, %struct.mddev** %4, align 8
  %109 = getelementptr inbounds %struct.mddev, %struct.mddev* %108, i32 0, i32 19
  store i8* %107, i8** %109, align 8
  br label %113

110:                                              ; preds = %65
  %111 = load %struct.mddev*, %struct.mddev** %4, align 8
  %112 = getelementptr inbounds %struct.mddev, %struct.mddev* %111, i32 0, i32 19
  store i8* null, i8** %112, align 8
  br label %113

113:                                              ; preds = %110, %106
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = load %struct.mddev*, %struct.mddev** %4, align 8
  %121 = getelementptr inbounds %struct.mddev, %struct.mddev* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 8
  %122 = load %struct.mddev*, %struct.mddev** %4, align 8
  %123 = getelementptr inbounds %struct.mddev, %struct.mddev* %122, i32 0, i32 18
  store i64 0, i64* %123, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.mddev*, %struct.mddev** %4, align 8
  %128 = getelementptr inbounds %struct.mddev, %struct.mddev* %127, i32 0, i32 5
  store i32 %126, i32* %128, align 8
  %129 = load %struct.mddev*, %struct.mddev** %4, align 8
  %130 = getelementptr inbounds %struct.mddev, %struct.mddev* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %113
  %134 = load %struct.mddev*, %struct.mddev** %4, align 8
  %135 = getelementptr inbounds %struct.mddev, %struct.mddev* %134, i32 0, i32 5
  store i32 -1, i32* %135, align 8
  br label %136

136:                                              ; preds = %133, %113
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = ashr i32 %139, 9
  %141 = load %struct.mddev*, %struct.mddev** %4, align 8
  %142 = getelementptr inbounds %struct.mddev, %struct.mddev* %141, i32 0, i32 6
  store i32 %140, i32* %142, align 4
  %143 = load %struct.mddev*, %struct.mddev** %4, align 8
  %144 = getelementptr inbounds %struct.mddev, %struct.mddev* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %136
  %148 = load i32, i32* @MD_SB_DISKS, align 4
  %149 = load %struct.mddev*, %struct.mddev** %4, align 8
  %150 = getelementptr inbounds %struct.mddev, %struct.mddev* %149, i32 0, i32 17
  store i32 %148, i32* %150, align 8
  %151 = load %struct.mddev*, %struct.mddev** %4, align 8
  %152 = getelementptr inbounds %struct.mddev, %struct.mddev* %151, i32 0, i32 16
  store i64 0, i64* %152, align 8
  %153 = load %struct.mddev*, %struct.mddev** %4, align 8
  %154 = getelementptr inbounds %struct.mddev, %struct.mddev* %153, i32 0, i32 15
  store i64 0, i64* %154, align 8
  br label %155

155:                                              ; preds = %147, %136
  %156 = load i32, i32* @MD_SB_CHANGE_DEVS, align 4
  %157 = load %struct.mddev*, %struct.mddev** %4, align 8
  %158 = getelementptr inbounds %struct.mddev, %struct.mddev* %157, i32 0, i32 15
  %159 = call i32 @set_bit(i32 %156, i64* %158)
  %160 = load i32, i32* @MD_SB_BYTES, align 4
  %161 = ashr i32 %160, 9
  %162 = load %struct.mddev*, %struct.mddev** %4, align 8
  %163 = getelementptr inbounds %struct.mddev, %struct.mddev* %162, i32 0, i32 14
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  store i32 %161, i32* %164, align 8
  %165 = load i32, i32* @MD_SB_BYTES, align 4
  %166 = ashr i32 %165, 9
  %167 = sub nsw i32 128, %166
  %168 = load %struct.mddev*, %struct.mddev** %4, align 8
  %169 = getelementptr inbounds %struct.mddev, %struct.mddev* %168, i32 0, i32 14
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  store i32 %167, i32* %170, align 4
  %171 = load %struct.mddev*, %struct.mddev** %4, align 8
  %172 = getelementptr inbounds %struct.mddev, %struct.mddev* %171, i32 0, i32 14
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  store i64 0, i64* %173, align 8
  %174 = load i8*, i8** @MaxSector, align 8
  %175 = load %struct.mddev*, %struct.mddev** %4, align 8
  %176 = getelementptr inbounds %struct.mddev, %struct.mddev* %175, i32 0, i32 13
  store i8* %174, i8** %176, align 8
  %177 = load %struct.mddev*, %struct.mddev** %4, align 8
  %178 = getelementptr inbounds %struct.mddev, %struct.mddev* %177, i32 0, i32 12
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @get_random_bytes(i32 %179, i32 16)
  %181 = load %struct.mddev*, %struct.mddev** %4, align 8
  %182 = getelementptr inbounds %struct.mddev, %struct.mddev* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.mddev*, %struct.mddev** %4, align 8
  %185 = getelementptr inbounds %struct.mddev, %struct.mddev* %184, i32 0, i32 7
  store i64 %183, i64* %185, align 8
  %186 = load %struct.mddev*, %struct.mddev** %4, align 8
  %187 = getelementptr inbounds %struct.mddev, %struct.mddev* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.mddev*, %struct.mddev** %4, align 8
  %190 = getelementptr inbounds %struct.mddev, %struct.mddev* %189, i32 0, i32 8
  store i32 %188, i32* %190, align 8
  %191 = load %struct.mddev*, %struct.mddev** %4, align 8
  %192 = getelementptr inbounds %struct.mddev, %struct.mddev* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.mddev*, %struct.mddev** %4, align 8
  %195 = getelementptr inbounds %struct.mddev, %struct.mddev* %194, i32 0, i32 9
  store i32 %193, i32* %195, align 4
  %196 = load %struct.mddev*, %struct.mddev** %4, align 8
  %197 = getelementptr inbounds %struct.mddev, %struct.mddev* %196, i32 0, i32 11
  store i64 0, i64* %197, align 8
  %198 = load %struct.mddev*, %struct.mddev** %4, align 8
  %199 = getelementptr inbounds %struct.mddev, %struct.mddev* %198, i32 0, i32 10
  store i64 0, i64* %199, align 8
  store i32 0, i32* %3, align 4
  br label %200

200:                                              ; preds = %155, %38, %31
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local i8* @ktime_get_real_seconds(...) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @get_random_bytes(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
