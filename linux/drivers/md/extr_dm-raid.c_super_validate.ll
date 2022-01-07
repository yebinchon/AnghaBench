; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_super_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_super_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { %struct.TYPE_5__, i32, %struct.TYPE_4__*, %struct.mddev }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i8* }
%struct.mddev = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.md_rdev = type { i64, i64, i8*, i8*, i32, i8*, i8*, i32 }
%struct.dm_raid_superblock = type { i32, i32, i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@FEATURE_FLAG_SUPPORTS_V190 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Unable to assemble array: Unknown flag(s) in compatible feature flags\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"Unable to assemble array: No incompatible feature flags supported yet\00", align 1
@FirstUse = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i8* null, align 8
@In_sync = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raid_set*, %struct.md_rdev*)* @super_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @super_validate(%struct.raid_set* %0, %struct.md_rdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.raid_set*, align 8
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca %struct.mddev*, align 8
  %7 = alloca %struct.dm_raid_superblock*, align 8
  store %struct.raid_set* %0, %struct.raid_set** %4, align 8
  store %struct.md_rdev* %1, %struct.md_rdev** %5, align 8
  %8 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %9 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %8, i32 0, i32 3
  store %struct.mddev* %9, %struct.mddev** %6, align 8
  %10 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %11 = call i64 @rs_is_raid0(%struct.raid_set* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %2
  %14 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %15 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %20 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %13, %2
  store i32 0, i32* %3, align 4
  br label %179

24:                                               ; preds = %18
  %25 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %26 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.dm_raid_superblock* @page_address(i32 %27)
  store %struct.dm_raid_superblock* %28, %struct.dm_raid_superblock** %7, align 8
  %29 = load %struct.mddev*, %struct.mddev** %6, align 8
  %30 = getelementptr inbounds %struct.mddev, %struct.mddev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %24
  %34 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %35 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %36 = call i64 @super_init_validation(%struct.raid_set* %34, %struct.md_rdev* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %179

41:                                               ; preds = %33, %24
  %42 = load %struct.dm_raid_superblock*, %struct.dm_raid_superblock** %7, align 8
  %43 = getelementptr inbounds %struct.dm_raid_superblock, %struct.dm_raid_superblock* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @le32_to_cpu(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = load %struct.dm_raid_superblock*, %struct.dm_raid_superblock** %7, align 8
  %49 = getelementptr inbounds %struct.dm_raid_superblock, %struct.dm_raid_superblock* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @le32_to_cpu(i32 %50)
  %52 = load i32, i32* @FEATURE_FLAG_SUPPORTS_V190, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %56 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i8** %58, align 8
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %179

61:                                               ; preds = %47, %41
  %62 = load %struct.dm_raid_superblock*, %struct.dm_raid_superblock** %7, align 8
  %63 = getelementptr inbounds %struct.dm_raid_superblock, %struct.dm_raid_superblock* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %68 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i8** %70, align 8
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %179

73:                                               ; preds = %61
  %74 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %75 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @rt_is_raid0(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %81 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79, %73
  br label %88

86:                                               ; preds = %79
  %87 = call i32 @to_sector(i32 4096)
  br label %88

88:                                               ; preds = %86, %85
  %89 = phi i32 [ 0, %85 ], [ %87, %86 ]
  %90 = load %struct.mddev*, %struct.mddev** %6, align 8
  %91 = getelementptr inbounds %struct.mddev, %struct.mddev* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 4
  %93 = load %struct.mddev*, %struct.mddev** %6, align 8
  %94 = getelementptr inbounds %struct.mddev, %struct.mddev* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.mddev*, %struct.mddev** %6, align 8
  %98 = getelementptr inbounds %struct.mddev, %struct.mddev* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* @FirstUse, align 4
  %101 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %102 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %101, i32 0, i32 4
  %103 = call i64 @test_and_clear_bit(i32 %100, i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %148, label %105

105:                                              ; preds = %88
  %106 = load %struct.dm_raid_superblock*, %struct.dm_raid_superblock** %7, align 8
  %107 = getelementptr inbounds %struct.dm_raid_superblock, %struct.dm_raid_superblock* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @le32_to_cpu(i32 %108)
  %110 = load i32, i32* @FEATURE_FLAG_SUPPORTS_V190, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %105
  %114 = load %struct.dm_raid_superblock*, %struct.dm_raid_superblock** %7, align 8
  %115 = getelementptr inbounds %struct.dm_raid_superblock, %struct.dm_raid_superblock* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @le64_to_cpu(i32 %116)
  %118 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %119 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %118, i32 0, i32 6
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %113, %105
  %121 = load %struct.dm_raid_superblock*, %struct.dm_raid_superblock** %7, align 8
  %122 = getelementptr inbounds %struct.dm_raid_superblock, %struct.dm_raid_superblock* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i8* @le64_to_cpu(i32 %123)
  %125 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %126 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %125, i32 0, i32 5
  store i8* %124, i8** %126, align 8
  %127 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %128 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %127, i32 0, i32 5
  %129 = load i8*, i8** %128, align 8
  %130 = load i8*, i8** @MaxSector, align 8
  %131 = icmp eq i8* %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %120
  %133 = load i32, i32* @In_sync, align 4
  %134 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %135 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %134, i32 0, i32 4
  %136 = call i32 @set_bit(i32 %133, i32* %135)
  br label %147

137:                                              ; preds = %120
  %138 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %139 = call i32 @rs_is_reshaping(%struct.raid_set* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %137
  %142 = load i32, i32* @In_sync, align 4
  %143 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %144 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %143, i32 0, i32 4
  %145 = call i32 @clear_bit(i32 %142, i32* %144)
  br label %146

146:                                              ; preds = %141, %137
  br label %147

147:                                              ; preds = %146, %132
  br label %148

148:                                              ; preds = %147, %88
  %149 = load i32, i32* @Faulty, align 4
  %150 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %151 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %150, i32 0, i32 4
  %152 = call i64 @test_and_clear_bit(i32 %149, i32* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %148
  %155 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %156 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %155, i32 0, i32 5
  store i8* null, i8** %156, align 8
  %157 = load i32, i32* @In_sync, align 4
  %158 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %159 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %158, i32 0, i32 4
  %160 = call i32 @clear_bit(i32 %157, i32* %159)
  %161 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %162 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %165 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %164, i32 0, i32 1
  store i64 %163, i64* %165, align 8
  br label %166

166:                                              ; preds = %154, %148
  %167 = load %struct.dm_raid_superblock*, %struct.dm_raid_superblock** %7, align 8
  %168 = getelementptr inbounds %struct.dm_raid_superblock, %struct.dm_raid_superblock* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i8* @le64_to_cpu(i32 %169)
  %171 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %172 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %171, i32 0, i32 3
  store i8* %170, i8** %172, align 8
  %173 = load %struct.dm_raid_superblock*, %struct.dm_raid_superblock** %7, align 8
  %174 = getelementptr inbounds %struct.dm_raid_superblock, %struct.dm_raid_superblock* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i8* @le64_to_cpu(i32 %175)
  %177 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %178 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %177, i32 0, i32 2
  store i8* %176, i8** %178, align 8
  store i32 0, i32* %3, align 4
  br label %179

179:                                              ; preds = %166, %66, %54, %38, %23
  %180 = load i32, i32* %3, align 4
  ret i32 %180
}

declare dso_local i64 @rs_is_raid0(%struct.raid_set*) #1

declare dso_local %struct.dm_raid_superblock* @page_address(i32) #1

declare dso_local i64 @super_init_validation(%struct.raid_set*, %struct.md_rdev*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @rt_is_raid0(i32) #1

declare dso_local i32 @to_sector(i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rs_is_reshaping(%struct.raid_set*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
