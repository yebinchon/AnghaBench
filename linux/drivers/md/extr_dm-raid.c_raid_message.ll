; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_raid_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid.c_raid_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.raid_set* }
%struct.raid_set = type { %struct.mddev }
%struct.mddev = type { i32, i64, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"frozen\00", align 1
@MD_RECOVERY_FROZEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@st_idle = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"resync\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"recover\00", align 1
@MD_RECOVERY_RECOVER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@MD_RECOVERY_CHECK = common dso_local global i32 0, align 4
@MD_RECOVERY_REQUESTED = common dso_local global i32 0, align 4
@MD_RECOVERY_SYNC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"repair\00", align 1
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**, i8*, i32)* @raid_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid_message(%struct.dm_target* %0, i32 %1, i8** %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_target*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.raid_set*, align 8
  %13 = alloca %struct.mddev*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.dm_target*, %struct.dm_target** %7, align 8
  %15 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %14, i32 0, i32 0
  %16 = load %struct.raid_set*, %struct.raid_set** %15, align 8
  store %struct.raid_set* %16, %struct.raid_set** %12, align 8
  %17 = load %struct.raid_set*, %struct.raid_set** %12, align 8
  %18 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %17, i32 0, i32 0
  store %struct.mddev* %18, %struct.mddev** %13, align 8
  %19 = load %struct.mddev*, %struct.mddev** %13, align 8
  %20 = getelementptr inbounds %struct.mddev, %struct.mddev* %19, i32 0, i32 5
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %5
  %24 = load %struct.mddev*, %struct.mddev** %13, align 8
  %25 = getelementptr inbounds %struct.mddev, %struct.mddev* %24, i32 0, i32 5
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23, %5
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %188

33:                                               ; preds = %23
  %34 = load i8**, i8*** %9, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strcasecmp(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %41 = load %struct.mddev*, %struct.mddev** %13, align 8
  %42 = getelementptr inbounds %struct.mddev, %struct.mddev* %41, i32 0, i32 3
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  br label %49

44:                                               ; preds = %33
  %45 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %46 = load %struct.mddev*, %struct.mddev** %13, align 8
  %47 = getelementptr inbounds %struct.mddev, %struct.mddev* %46, i32 0, i32 3
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i8**, i8*** %9, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @strcasecmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i8**, i8*** %9, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strcasecmp(i8* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %74, label %61

61:                                               ; preds = %55, %49
  %62 = load %struct.mddev*, %struct.mddev** %13, align 8
  %63 = getelementptr inbounds %struct.mddev, %struct.mddev* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %68 = load %struct.mddev*, %struct.mddev** %13, align 8
  %69 = getelementptr inbounds %struct.mddev, %struct.mddev* %68, i32 0, i32 3
  %70 = call i32 @set_bit(i32 %67, i32* %69)
  %71 = load %struct.mddev*, %struct.mddev** %13, align 8
  %72 = call i32 @md_reap_sync_thread(%struct.mddev* %71)
  br label %73

73:                                               ; preds = %66, %61
  br label %145

74:                                               ; preds = %55
  %75 = load %struct.mddev*, %struct.mddev** %13, align 8
  %76 = load %struct.mddev*, %struct.mddev** %13, align 8
  %77 = getelementptr inbounds %struct.mddev, %struct.mddev* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @decipher_sync_action(%struct.mddev* %75, i32 %78)
  %80 = load i64, i64* @st_idle, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i32, i32* @EBUSY, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %188

85:                                               ; preds = %74
  %86 = load i8**, i8*** %9, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @strcasecmp(i8* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  br label %143

92:                                               ; preds = %85
  %93 = load i8**, i8*** %9, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @strcasecmp(i8* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* @MD_RECOVERY_RECOVER, align 4
  %100 = load %struct.mddev*, %struct.mddev** %13, align 8
  %101 = getelementptr inbounds %struct.mddev, %struct.mddev* %100, i32 0, i32 3
  %102 = call i32 @set_bit(i32 %99, i32* %101)
  br label %142

103:                                              ; preds = %92
  %104 = load i8**, i8*** %9, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @strcasecmp(i8* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* @MD_RECOVERY_CHECK, align 4
  %111 = load %struct.mddev*, %struct.mddev** %13, align 8
  %112 = getelementptr inbounds %struct.mddev, %struct.mddev* %111, i32 0, i32 3
  %113 = call i32 @set_bit(i32 %110, i32* %112)
  %114 = load i32, i32* @MD_RECOVERY_REQUESTED, align 4
  %115 = load %struct.mddev*, %struct.mddev** %13, align 8
  %116 = getelementptr inbounds %struct.mddev, %struct.mddev* %115, i32 0, i32 3
  %117 = call i32 @set_bit(i32 %114, i32* %116)
  %118 = load i32, i32* @MD_RECOVERY_SYNC, align 4
  %119 = load %struct.mddev*, %struct.mddev** %13, align 8
  %120 = getelementptr inbounds %struct.mddev, %struct.mddev* %119, i32 0, i32 3
  %121 = call i32 @set_bit(i32 %118, i32* %120)
  br label %141

122:                                              ; preds = %103
  %123 = load i8**, i8*** %9, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @strcasecmp(i8* %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %137, label %128

128:                                              ; preds = %122
  %129 = load i32, i32* @MD_RECOVERY_REQUESTED, align 4
  %130 = load %struct.mddev*, %struct.mddev** %13, align 8
  %131 = getelementptr inbounds %struct.mddev, %struct.mddev* %130, i32 0, i32 3
  %132 = call i32 @set_bit(i32 %129, i32* %131)
  %133 = load i32, i32* @MD_RECOVERY_SYNC, align 4
  %134 = load %struct.mddev*, %struct.mddev** %13, align 8
  %135 = getelementptr inbounds %struct.mddev, %struct.mddev* %134, i32 0, i32 3
  %136 = call i32 @set_bit(i32 %133, i32* %135)
  br label %140

137:                                              ; preds = %122
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %6, align 4
  br label %188

140:                                              ; preds = %128
  br label %141

141:                                              ; preds = %140, %109
  br label %142

142:                                              ; preds = %141, %98
  br label %143

143:                                              ; preds = %142, %91
  br label %144

144:                                              ; preds = %143
  br label %145

145:                                              ; preds = %144, %73
  %146 = load %struct.mddev*, %struct.mddev** %13, align 8
  %147 = getelementptr inbounds %struct.mddev, %struct.mddev* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %150, label %168

150:                                              ; preds = %145
  %151 = load %struct.mddev*, %struct.mddev** %13, align 8
  %152 = getelementptr inbounds %struct.mddev, %struct.mddev* %151, i32 0, i32 0
  store i32 0, i32* %152, align 8
  %153 = load %struct.mddev*, %struct.mddev** %13, align 8
  %154 = getelementptr inbounds %struct.mddev, %struct.mddev* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %167, label %157

157:                                              ; preds = %150
  %158 = load %struct.mddev*, %struct.mddev** %13, align 8
  %159 = getelementptr inbounds %struct.mddev, %struct.mddev* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load %struct.mddev*, %struct.mddev** %13, align 8
  %164 = getelementptr inbounds %struct.mddev, %struct.mddev* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = call i32 @md_wakeup_thread(i64 %165)
  br label %167

167:                                              ; preds = %162, %157, %150
  br label %168

168:                                              ; preds = %167, %145
  %169 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %170 = load %struct.mddev*, %struct.mddev** %13, align 8
  %171 = getelementptr inbounds %struct.mddev, %struct.mddev* %170, i32 0, i32 3
  %172 = call i32 @set_bit(i32 %169, i32* %171)
  %173 = load %struct.mddev*, %struct.mddev** %13, align 8
  %174 = getelementptr inbounds %struct.mddev, %struct.mddev* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %187, label %177

177:                                              ; preds = %168
  %178 = load %struct.mddev*, %struct.mddev** %13, align 8
  %179 = getelementptr inbounds %struct.mddev, %struct.mddev* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %177
  %183 = load %struct.mddev*, %struct.mddev** %13, align 8
  %184 = getelementptr inbounds %struct.mddev, %struct.mddev* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @md_wakeup_thread(i64 %185)
  br label %187

187:                                              ; preds = %182, %177, %168
  store i32 0, i32* %6, align 4
  br label %188

188:                                              ; preds = %187, %137, %82, %30
  %189 = load i32, i32* %6, align 4
  ret i32 %189
}

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @md_reap_sync_thread(%struct.mddev*) #1

declare dso_local i64 @decipher_sync_action(%struct.mddev*, i32) #1

declare dso_local i32 @md_wakeup_thread(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
