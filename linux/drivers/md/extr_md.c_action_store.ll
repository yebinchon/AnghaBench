; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_action_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_action_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i32, i32, i64, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mddev*)*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"frozen\00", align 1
@MD_RECOVERY_FROZEN = common dso_local global i32 0, align 4
@MD_RECOVERY_RUNNING = common dso_local global i32 0, align 4
@md_misc_wq = common dso_local global i32 0, align 4
@MD_RECOVERY_INTR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"resync\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"recover\00", align 1
@MD_RECOVERY_RECOVER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"reshape\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"degraded\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@MD_RECOVERY_CHECK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"repair\00", align 1
@MD_RECOVERY_REQUESTED = common dso_local global i32 0, align 4
@MD_RECOVERY_SYNC = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mddev*, i8*, i64)* @action_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @action_store(%struct.mddev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mddev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.mddev*, %struct.mddev** %5, align 8
  %10 = getelementptr inbounds %struct.mddev, %struct.mddev* %9, i32 0, i32 6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load %struct.mddev*, %struct.mddev** %5, align 8
  %15 = getelementptr inbounds %struct.mddev, %struct.mddev* %14, i32 0, i32 6
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %217

23:                                               ; preds = %13
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @cmd_match(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @cmd_match(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %73

31:                                               ; preds = %27, %23
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @cmd_match(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %37 = load %struct.mddev*, %struct.mddev** %5, align 8
  %38 = getelementptr inbounds %struct.mddev, %struct.mddev* %37, i32 0, i32 3
  %39 = call i32 @set_bit(i32 %36, i32* %38)
  br label %45

40:                                               ; preds = %31
  %41 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %42 = load %struct.mddev*, %struct.mddev** %5, align 8
  %43 = getelementptr inbounds %struct.mddev, %struct.mddev* %42, i32 0, i32 3
  %44 = call i32 @clear_bit(i32 %41, i32* %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32, i32* @MD_RECOVERY_RUNNING, align 4
  %47 = load %struct.mddev*, %struct.mddev** %5, align 8
  %48 = getelementptr inbounds %struct.mddev, %struct.mddev* %47, i32 0, i32 3
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %45
  %52 = load %struct.mddev*, %struct.mddev** %5, align 8
  %53 = call i32 @mddev_lock(%struct.mddev* %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load i32, i32* @md_misc_wq, align 4
  %57 = call i32 @flush_workqueue(i32 %56)
  %58 = load %struct.mddev*, %struct.mddev** %5, align 8
  %59 = getelementptr inbounds %struct.mddev, %struct.mddev* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load i32, i32* @MD_RECOVERY_INTR, align 4
  %64 = load %struct.mddev*, %struct.mddev** %5, align 8
  %65 = getelementptr inbounds %struct.mddev, %struct.mddev* %64, i32 0, i32 3
  %66 = call i32 @set_bit(i32 %63, i32* %65)
  %67 = load %struct.mddev*, %struct.mddev** %5, align 8
  %68 = call i32 @md_reap_sync_thread(%struct.mddev* %67)
  br label %69

69:                                               ; preds = %62, %55
  %70 = load %struct.mddev*, %struct.mddev** %5, align 8
  %71 = call i32 @mddev_unlock(%struct.mddev* %70)
  br label %72

72:                                               ; preds = %69, %51, %45
  br label %190

73:                                               ; preds = %27
  %74 = load i32, i32* @MD_RECOVERY_RUNNING, align 4
  %75 = load %struct.mddev*, %struct.mddev** %5, align 8
  %76 = getelementptr inbounds %struct.mddev, %struct.mddev* %75, i32 0, i32 3
  %77 = call i64 @test_bit(i32 %74, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* @EBUSY, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %217

82:                                               ; preds = %73
  %83 = load i8*, i8** %6, align 8
  %84 = call i64 @cmd_match(i8* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %88 = load %struct.mddev*, %struct.mddev** %5, align 8
  %89 = getelementptr inbounds %struct.mddev, %struct.mddev* %88, i32 0, i32 3
  %90 = call i32 @clear_bit(i32 %87, i32* %89)
  br label %188

91:                                               ; preds = %82
  %92 = load i8*, i8** %6, align 8
  %93 = call i64 @cmd_match(i8* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %97 = load %struct.mddev*, %struct.mddev** %5, align 8
  %98 = getelementptr inbounds %struct.mddev, %struct.mddev* %97, i32 0, i32 3
  %99 = call i32 @clear_bit(i32 %96, i32* %98)
  %100 = load i32, i32* @MD_RECOVERY_RECOVER, align 4
  %101 = load %struct.mddev*, %struct.mddev** %5, align 8
  %102 = getelementptr inbounds %struct.mddev, %struct.mddev* %101, i32 0, i32 3
  %103 = call i32 @set_bit(i32 %100, i32* %102)
  br label %187

104:                                              ; preds = %91
  %105 = load i8*, i8** %6, align 8
  %106 = call i64 @cmd_match(i8* %105, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %156

108:                                              ; preds = %104
  %109 = load %struct.mddev*, %struct.mddev** %5, align 8
  %110 = getelementptr inbounds %struct.mddev, %struct.mddev* %109, i32 0, i32 6
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32 (%struct.mddev*)*, i32 (%struct.mddev*)** %112, align 8
  %114 = icmp eq i32 (%struct.mddev*)* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  br label %217

118:                                              ; preds = %108
  %119 = load %struct.mddev*, %struct.mddev** %5, align 8
  %120 = call i32 @mddev_lock(%struct.mddev* %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %147, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* @MD_RECOVERY_RUNNING, align 4
  %125 = load %struct.mddev*, %struct.mddev** %5, align 8
  %126 = getelementptr inbounds %struct.mddev, %struct.mddev* %125, i32 0, i32 3
  %127 = call i64 @test_bit(i32 %124, i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load i32, i32* @EBUSY, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %8, align 4
  br label %144

132:                                              ; preds = %123
  %133 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %134 = load %struct.mddev*, %struct.mddev** %5, align 8
  %135 = getelementptr inbounds %struct.mddev, %struct.mddev* %134, i32 0, i32 3
  %136 = call i32 @clear_bit(i32 %133, i32* %135)
  %137 = load %struct.mddev*, %struct.mddev** %5, align 8
  %138 = getelementptr inbounds %struct.mddev, %struct.mddev* %137, i32 0, i32 6
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32 (%struct.mddev*)*, i32 (%struct.mddev*)** %140, align 8
  %142 = load %struct.mddev*, %struct.mddev** %5, align 8
  %143 = call i32 %141(%struct.mddev* %142)
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %132, %129
  %145 = load %struct.mddev*, %struct.mddev** %5, align 8
  %146 = call i32 @mddev_unlock(%struct.mddev* %145)
  br label %147

147:                                              ; preds = %144, %118
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* %4, align 4
  br label %217

152:                                              ; preds = %147
  %153 = load %struct.mddev*, %struct.mddev** %5, align 8
  %154 = getelementptr inbounds %struct.mddev, %struct.mddev* %153, i32 0, i32 5
  %155 = call i32 @sysfs_notify(i32* %154, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %186

156:                                              ; preds = %104
  %157 = load i8*, i8** %6, align 8
  %158 = call i64 @cmd_match(i8* %157, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %156
  %161 = load i32, i32* @MD_RECOVERY_CHECK, align 4
  %162 = load %struct.mddev*, %struct.mddev** %5, align 8
  %163 = getelementptr inbounds %struct.mddev, %struct.mddev* %162, i32 0, i32 3
  %164 = call i32 @set_bit(i32 %161, i32* %163)
  br label %173

165:                                              ; preds = %156
  %166 = load i8*, i8** %6, align 8
  %167 = call i64 @cmd_match(i8* %166, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %165
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %4, align 4
  br label %217

172:                                              ; preds = %165
  br label %173

173:                                              ; preds = %172, %160
  %174 = load i32, i32* @MD_RECOVERY_FROZEN, align 4
  %175 = load %struct.mddev*, %struct.mddev** %5, align 8
  %176 = getelementptr inbounds %struct.mddev, %struct.mddev* %175, i32 0, i32 3
  %177 = call i32 @clear_bit(i32 %174, i32* %176)
  %178 = load i32, i32* @MD_RECOVERY_REQUESTED, align 4
  %179 = load %struct.mddev*, %struct.mddev** %5, align 8
  %180 = getelementptr inbounds %struct.mddev, %struct.mddev* %179, i32 0, i32 3
  %181 = call i32 @set_bit(i32 %178, i32* %180)
  %182 = load i32, i32* @MD_RECOVERY_SYNC, align 4
  %183 = load %struct.mddev*, %struct.mddev** %5, align 8
  %184 = getelementptr inbounds %struct.mddev, %struct.mddev* %183, i32 0, i32 3
  %185 = call i32 @set_bit(i32 %182, i32* %184)
  br label %186

186:                                              ; preds = %173, %152
  br label %187

187:                                              ; preds = %186, %95
  br label %188

188:                                              ; preds = %187, %86
  br label %189

189:                                              ; preds = %188
  br label %190

190:                                              ; preds = %189, %72
  %191 = load %struct.mddev*, %struct.mddev** %5, align 8
  %192 = getelementptr inbounds %struct.mddev, %struct.mddev* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 2
  br i1 %194, label %195, label %202

195:                                              ; preds = %190
  %196 = load %struct.mddev*, %struct.mddev** %5, align 8
  %197 = getelementptr inbounds %struct.mddev, %struct.mddev* %196, i32 0, i32 0
  store i32 0, i32* %197, align 8
  %198 = load %struct.mddev*, %struct.mddev** %5, align 8
  %199 = getelementptr inbounds %struct.mddev, %struct.mddev* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @md_wakeup_thread(i64 %200)
  br label %202

202:                                              ; preds = %195, %190
  %203 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %204 = load %struct.mddev*, %struct.mddev** %5, align 8
  %205 = getelementptr inbounds %struct.mddev, %struct.mddev* %204, i32 0, i32 3
  %206 = call i32 @set_bit(i32 %203, i32* %205)
  %207 = load %struct.mddev*, %struct.mddev** %5, align 8
  %208 = getelementptr inbounds %struct.mddev, %struct.mddev* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @md_wakeup_thread(i64 %209)
  %211 = load %struct.mddev*, %struct.mddev** %5, align 8
  %212 = getelementptr inbounds %struct.mddev, %struct.mddev* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @sysfs_notify_dirent_safe(i32 %213)
  %215 = load i64, i64* %7, align 8
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %4, align 4
  br label %217

217:                                              ; preds = %202, %169, %150, %115, %79, %20
  %218 = load i32, i32* %4, align 4
  ret i32 %218
}

declare dso_local i64 @cmd_match(i8*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mddev_lock(%struct.mddev*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @md_reap_sync_thread(%struct.mddev*) #1

declare dso_local i32 @mddev_unlock(%struct.mddev*) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

declare dso_local i32 @md_wakeup_thread(i64) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
