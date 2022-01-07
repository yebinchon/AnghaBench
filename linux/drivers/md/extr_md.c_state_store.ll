; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_state_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_state_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.mddev*, %struct.md_rdev*)*, i32 (%struct.md_rdev*)* }
%struct.mddev = type { i64, i32*, i32, i32, i32 }
%struct.md_rdev = type { i32, i32, i32, i32, %struct.mddev*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"faulty\00", align 1
@Faulty = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@Blocked = common dso_local global i32 0, align 4
@md_cluster_ops = common dso_local global %struct.TYPE_4__* null, align 8
@MD_SB_CHANGE_DEVS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"writemostly\00", align 1
@WriteMostly = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"-writemostly\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"blocked\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"-blocked\00", align 1
@ExternalBbl = common dso_local global i32 0, align 4
@BlockedBadBlocks = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"insync\00", align 1
@In_sync = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"failfast\00", align 1
@FailFast = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"-failfast\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"-insync\00", align 1
@Journal = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"write_error\00", align 1
@WriteErrorSeen = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"-write_error\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"want_replacement\00", align 1
@Replacement = common dso_local global i32 0, align 4
@WantReplacement = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"-want_replacement\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"replacement\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"-replacement\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"re-add\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"external_bbl\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"-external_bbl\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_rdev*, i8*, i64)* @state_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_store(%struct.md_rdev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mddev*, align 8
  store %struct.md_rdev* %0, %struct.md_rdev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @cmd_match(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %3
  %15 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %16 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %15, i32 0, i32 4
  %17 = load %struct.mddev*, %struct.mddev** %16, align 8
  %18 = getelementptr inbounds %struct.mddev, %struct.mddev* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %14
  %22 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %23 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %22, i32 0, i32 4
  %24 = load %struct.mddev*, %struct.mddev** %23, align 8
  %25 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %26 = call i32 @md_error(%struct.mddev* %24, %struct.md_rdev* %25)
  %27 = load i32, i32* @Faulty, align 4
  %28 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %29 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %28, i32 0, i32 3
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %36

33:                                               ; preds = %21
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %33, %32
  br label %475

37:                                               ; preds = %14, %3
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @cmd_match(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %104

41:                                               ; preds = %37
  %42 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %43 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %42, i32 0, i32 4
  %44 = load %struct.mddev*, %struct.mddev** %43, align 8
  %45 = getelementptr inbounds %struct.mddev, %struct.mddev* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load i32, i32* @Blocked, align 4
  %50 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %51 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %50, i32 0, i32 3
  %52 = call i32 @clear_bit(i32 %49, i32* %51)
  %53 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %54 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %53, i32 0, i32 4
  %55 = load %struct.mddev*, %struct.mddev** %54, align 8
  %56 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %57 = call i32 @remove_and_add_spares(%struct.mddev* %55, %struct.md_rdev* %56)
  br label %58

58:                                               ; preds = %48, %41
  %59 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %60 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %103

66:                                               ; preds = %58
  %67 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %68 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %67, i32 0, i32 4
  %69 = load %struct.mddev*, %struct.mddev** %68, align 8
  store %struct.mddev* %69, %struct.mddev** %8, align 8
  store i32 0, i32* %7, align 4
  %70 = load %struct.mddev*, %struct.mddev** %8, align 8
  %71 = call i64 @mddev_is_clustered(%struct.mddev* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @md_cluster_ops, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32 (%struct.mddev*, %struct.md_rdev*)*, i32 (%struct.mddev*, %struct.md_rdev*)** %75, align 8
  %77 = load %struct.mddev*, %struct.mddev** %8, align 8
  %78 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %79 = call i32 %76(%struct.mddev* %77, %struct.md_rdev* %78)
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %73, %66
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %80
  %84 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %85 = call i32 @md_kick_rdev_from_array(%struct.md_rdev* %84)
  %86 = load %struct.mddev*, %struct.mddev** %8, align 8
  %87 = getelementptr inbounds %struct.mddev, %struct.mddev* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %83
  %91 = load i32, i32* @MD_SB_CHANGE_DEVS, align 4
  %92 = load %struct.mddev*, %struct.mddev** %8, align 8
  %93 = getelementptr inbounds %struct.mddev, %struct.mddev* %92, i32 0, i32 4
  %94 = call i32 @set_bit(i32 %91, i32* %93)
  %95 = load %struct.mddev*, %struct.mddev** %8, align 8
  %96 = getelementptr inbounds %struct.mddev, %struct.mddev* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @md_wakeup_thread(i32 %97)
  br label %99

99:                                               ; preds = %90, %83
  %100 = load %struct.mddev*, %struct.mddev** %8, align 8
  %101 = call i32 @md_new_event(%struct.mddev* %100)
  br label %102

102:                                              ; preds = %99, %80
  br label %103

103:                                              ; preds = %102, %63
  br label %474

104:                                              ; preds = %37
  %105 = load i8*, i8** %5, align 8
  %106 = call i64 @cmd_match(i8* %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %104
  %109 = load i32, i32* @WriteMostly, align 4
  %110 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %111 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %110, i32 0, i32 3
  %112 = call i32 @set_bit(i32 %109, i32* %111)
  %113 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %114 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %113, i32 0, i32 4
  %115 = load %struct.mddev*, %struct.mddev** %114, align 8
  %116 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %117 = call i32 @mddev_create_wb_pool(%struct.mddev* %115, %struct.md_rdev* %116, i32 0)
  store i32 0, i32* %7, align 4
  br label %473

118:                                              ; preds = %104
  %119 = load i8*, i8** %5, align 8
  %120 = call i64 @cmd_match(i8* %119, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %118
  %123 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %124 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %123, i32 0, i32 4
  %125 = load %struct.mddev*, %struct.mddev** %124, align 8
  %126 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %127 = call i32 @mddev_destroy_wb_pool(%struct.mddev* %125, %struct.md_rdev* %126)
  %128 = load i32, i32* @WriteMostly, align 4
  %129 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %130 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %129, i32 0, i32 3
  %131 = call i32 @clear_bit(i32 %128, i32* %130)
  store i32 0, i32* %7, align 4
  br label %472

132:                                              ; preds = %118
  %133 = load i8*, i8** %5, align 8
  %134 = call i64 @cmd_match(i8* %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i32, i32* @Blocked, align 4
  %138 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %139 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %138, i32 0, i32 3
  %140 = call i32 @set_bit(i32 %137, i32* %139)
  store i32 0, i32* %7, align 4
  br label %471

141:                                              ; preds = %132
  %142 = load i8*, i8** %5, align 8
  %143 = call i64 @cmd_match(i8* %142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %193

145:                                              ; preds = %141
  %146 = load i32, i32* @Faulty, align 4
  %147 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %148 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %147, i32 0, i32 3
  %149 = call i64 @test_bit(i32 %146, i32* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %169, label %151

151:                                              ; preds = %145
  %152 = load i32, i32* @ExternalBbl, align 4
  %153 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %154 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %153, i32 0, i32 3
  %155 = call i64 @test_bit(i32 %152, i32* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %169, label %157

157:                                              ; preds = %151
  %158 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %159 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %165 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %164, i32 0, i32 4
  %166 = load %struct.mddev*, %struct.mddev** %165, align 8
  %167 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %168 = call i32 @md_error(%struct.mddev* %166, %struct.md_rdev* %167)
  br label %169

169:                                              ; preds = %163, %157, %151, %145
  %170 = load i32, i32* @Blocked, align 4
  %171 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %172 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %171, i32 0, i32 3
  %173 = call i32 @clear_bit(i32 %170, i32* %172)
  %174 = load i32, i32* @BlockedBadBlocks, align 4
  %175 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %176 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %175, i32 0, i32 3
  %177 = call i32 @clear_bit(i32 %174, i32* %176)
  %178 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %179 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %178, i32 0, i32 6
  %180 = call i32 @wake_up(i32* %179)
  %181 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %182 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %183 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %182, i32 0, i32 4
  %184 = load %struct.mddev*, %struct.mddev** %183, align 8
  %185 = getelementptr inbounds %struct.mddev, %struct.mddev* %184, i32 0, i32 3
  %186 = call i32 @set_bit(i32 %181, i32* %185)
  %187 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %188 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %187, i32 0, i32 4
  %189 = load %struct.mddev*, %struct.mddev** %188, align 8
  %190 = getelementptr inbounds %struct.mddev, %struct.mddev* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @md_wakeup_thread(i32 %191)
  store i32 0, i32* %7, align 4
  br label %470

193:                                              ; preds = %141
  %194 = load i8*, i8** %5, align 8
  %195 = call i64 @cmd_match(i8* %194, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %207

197:                                              ; preds = %193
  %198 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %199 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp eq i32 %200, -1
  br i1 %201, label %202, label %207

202:                                              ; preds = %197
  %203 = load i32, i32* @In_sync, align 4
  %204 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %205 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %204, i32 0, i32 3
  %206 = call i32 @set_bit(i32 %203, i32* %205)
  store i32 0, i32* %7, align 4
  br label %469

207:                                              ; preds = %197, %193
  %208 = load i8*, i8** %5, align 8
  %209 = call i64 @cmd_match(i8* %208, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %207
  %212 = load i32, i32* @FailFast, align 4
  %213 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %214 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %213, i32 0, i32 3
  %215 = call i32 @set_bit(i32 %212, i32* %214)
  store i32 0, i32* %7, align 4
  br label %468

216:                                              ; preds = %207
  %217 = load i8*, i8** %5, align 8
  %218 = call i64 @cmd_match(i8* %217, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %216
  %221 = load i32, i32* @FailFast, align 4
  %222 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %223 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %222, i32 0, i32 3
  %224 = call i32 @clear_bit(i32 %221, i32* %223)
  store i32 0, i32* %7, align 4
  br label %467

225:                                              ; preds = %216
  %226 = load i8*, i8** %5, align 8
  %227 = call i64 @cmd_match(i8* %226, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %260

229:                                              ; preds = %225
  %230 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %231 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp sge i32 %232, 0
  br i1 %233, label %234, label %260

234:                                              ; preds = %229
  %235 = load i32, i32* @Journal, align 4
  %236 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %237 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %236, i32 0, i32 3
  %238 = call i64 @test_bit(i32 %235, i32* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %260, label %240

240:                                              ; preds = %234
  %241 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %242 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %241, i32 0, i32 4
  %243 = load %struct.mddev*, %struct.mddev** %242, align 8
  %244 = getelementptr inbounds %struct.mddev, %struct.mddev* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = icmp eq i32* %245, null
  br i1 %246, label %247, label %259

247:                                              ; preds = %240
  %248 = load i32, i32* @In_sync, align 4
  %249 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %250 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %249, i32 0, i32 3
  %251 = call i32 @clear_bit(i32 %248, i32* %250)
  %252 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %253 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %256 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %255, i32 0, i32 1
  store i32 %254, i32* %256, align 4
  %257 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %258 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %257, i32 0, i32 0
  store i32 -1, i32* %258, align 8
  store i32 0, i32* %7, align 4
  br label %259

259:                                              ; preds = %247, %240
  br label %466

260:                                              ; preds = %234, %229, %225
  %261 = load i8*, i8** %5, align 8
  %262 = call i64 @cmd_match(i8* %261, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %260
  %265 = load i32, i32* @WriteErrorSeen, align 4
  %266 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %267 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %266, i32 0, i32 3
  %268 = call i32 @set_bit(i32 %265, i32* %267)
  store i32 0, i32* %7, align 4
  br label %465

269:                                              ; preds = %260
  %270 = load i8*, i8** %5, align 8
  %271 = call i64 @cmd_match(i8* %270, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %269
  %274 = load i32, i32* @WriteErrorSeen, align 4
  %275 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %276 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %275, i32 0, i32 3
  %277 = call i32 @clear_bit(i32 %274, i32* %276)
  store i32 0, i32* %7, align 4
  br label %464

278:                                              ; preds = %269
  %279 = load i8*, i8** %5, align 8
  %280 = call i64 @cmd_match(i8* %279, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %317

282:                                              ; preds = %278
  %283 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %284 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = icmp sge i32 %285, 0
  br i1 %286, label %287, label %304

287:                                              ; preds = %282
  %288 = load i32, i32* @Journal, align 4
  %289 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %290 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %289, i32 0, i32 3
  %291 = call i64 @test_bit(i32 %288, i32* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %304, label %293

293:                                              ; preds = %287
  %294 = load i32, i32* @Replacement, align 4
  %295 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %296 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %295, i32 0, i32 3
  %297 = call i64 @test_bit(i32 %294, i32* %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %304, label %299

299:                                              ; preds = %293
  %300 = load i32, i32* @WantReplacement, align 4
  %301 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %302 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %301, i32 0, i32 3
  %303 = call i32 @set_bit(i32 %300, i32* %302)
  br label %304

304:                                              ; preds = %299, %293, %287, %282
  %305 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %306 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %307 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %306, i32 0, i32 4
  %308 = load %struct.mddev*, %struct.mddev** %307, align 8
  %309 = getelementptr inbounds %struct.mddev, %struct.mddev* %308, i32 0, i32 3
  %310 = call i32 @set_bit(i32 %305, i32* %309)
  %311 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %312 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %311, i32 0, i32 4
  %313 = load %struct.mddev*, %struct.mddev** %312, align 8
  %314 = getelementptr inbounds %struct.mddev, %struct.mddev* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @md_wakeup_thread(i32 %315)
  store i32 0, i32* %7, align 4
  br label %463

317:                                              ; preds = %278
  %318 = load i8*, i8** %5, align 8
  %319 = call i64 @cmd_match(i8* %318, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %326

321:                                              ; preds = %317
  store i32 0, i32* %7, align 4
  %322 = load i32, i32* @WantReplacement, align 4
  %323 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %324 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %323, i32 0, i32 3
  %325 = call i32 @clear_bit(i32 %322, i32* %324)
  br label %462

326:                                              ; preds = %317
  %327 = load i8*, i8** %5, align 8
  %328 = call i64 @cmd_match(i8* %327, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %346

330:                                              ; preds = %326
  %331 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %332 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %331, i32 0, i32 4
  %333 = load %struct.mddev*, %struct.mddev** %332, align 8
  %334 = getelementptr inbounds %struct.mddev, %struct.mddev* %333, i32 0, i32 1
  %335 = load i32*, i32** %334, align 8
  %336 = icmp ne i32* %335, null
  br i1 %336, label %337, label %340

337:                                              ; preds = %330
  %338 = load i32, i32* @EBUSY, align 4
  %339 = sub nsw i32 0, %338
  store i32 %339, i32* %7, align 4
  br label %345

340:                                              ; preds = %330
  %341 = load i32, i32* @Replacement, align 4
  %342 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %343 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %342, i32 0, i32 3
  %344 = call i32 @set_bit(i32 %341, i32* %343)
  store i32 0, i32* %7, align 4
  br label %345

345:                                              ; preds = %340, %337
  br label %461

346:                                              ; preds = %326
  %347 = load i8*, i8** %5, align 8
  %348 = call i64 @cmd_match(i8* %347, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %366

350:                                              ; preds = %346
  %351 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %352 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %351, i32 0, i32 4
  %353 = load %struct.mddev*, %struct.mddev** %352, align 8
  %354 = getelementptr inbounds %struct.mddev, %struct.mddev* %353, i32 0, i32 1
  %355 = load i32*, i32** %354, align 8
  %356 = icmp ne i32* %355, null
  br i1 %356, label %357, label %360

357:                                              ; preds = %350
  %358 = load i32, i32* @EBUSY, align 4
  %359 = sub nsw i32 0, %358
  store i32 %359, i32* %7, align 4
  br label %365

360:                                              ; preds = %350
  %361 = load i32, i32* @Replacement, align 4
  %362 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %363 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %362, i32 0, i32 3
  %364 = call i32 @clear_bit(i32 %361, i32* %363)
  store i32 0, i32* %7, align 4
  br label %365

365:                                              ; preds = %360, %357
  br label %460

366:                                              ; preds = %346
  %367 = load i8*, i8** %5, align 8
  %368 = call i64 @cmd_match(i8* %367, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %422

370:                                              ; preds = %366
  %371 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %372 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %371, i32 0, i32 4
  %373 = load %struct.mddev*, %struct.mddev** %372, align 8
  %374 = getelementptr inbounds %struct.mddev, %struct.mddev* %373, i32 0, i32 1
  %375 = load i32*, i32** %374, align 8
  %376 = icmp ne i32* %375, null
  br i1 %376, label %380, label %377

377:                                              ; preds = %370
  %378 = load i32, i32* @EINVAL, align 4
  %379 = sub nsw i32 0, %378
  store i32 %379, i32* %7, align 4
  br label %421

380:                                              ; preds = %370
  %381 = load i32, i32* @Faulty, align 4
  %382 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %383 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %382, i32 0, i32 3
  %384 = call i64 @test_bit(i32 %381, i32* %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %417

386:                                              ; preds = %380
  %387 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %388 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = icmp eq i32 %389, -1
  br i1 %390, label %391, label %417

391:                                              ; preds = %386
  %392 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %393 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = icmp sge i32 %394, 0
  br i1 %395, label %396, label %417

396:                                              ; preds = %391
  %397 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %398 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %397, i32 0, i32 4
  %399 = load %struct.mddev*, %struct.mddev** %398, align 8
  %400 = call i64 @mddev_is_clustered(%struct.mddev* %399)
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %409

402:                                              ; preds = %396
  %403 = load %struct.TYPE_4__*, %struct.TYPE_4__** @md_cluster_ops, align 8
  %404 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %403, i32 0, i32 1
  %405 = load i32 (%struct.md_rdev*)*, i32 (%struct.md_rdev*)** %404, align 8
  %406 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %407 = call i32 %405(%struct.md_rdev* %406)
  store i32 %407, i32* %7, align 4
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %416

409:                                              ; preds = %402, %396
  %410 = load i32, i32* @Faulty, align 4
  %411 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %412 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %411, i32 0, i32 3
  %413 = call i32 @clear_bit(i32 %410, i32* %412)
  %414 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %415 = call i32 @add_bound_rdev(%struct.md_rdev* %414)
  store i32 %415, i32* %7, align 4
  br label %416

416:                                              ; preds = %409, %402
  br label %420

417:                                              ; preds = %391, %386, %380
  %418 = load i32, i32* @EBUSY, align 4
  %419 = sub nsw i32 0, %418
  store i32 %419, i32* %7, align 4
  br label %420

420:                                              ; preds = %417, %416
  br label %421

421:                                              ; preds = %420, %377
  br label %459

422:                                              ; preds = %366
  %423 = load i8*, i8** %5, align 8
  %424 = call i64 @cmd_match(i8* %423, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %441

426:                                              ; preds = %422
  %427 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %428 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %427, i32 0, i32 4
  %429 = load %struct.mddev*, %struct.mddev** %428, align 8
  %430 = getelementptr inbounds %struct.mddev, %struct.mddev* %429, i32 0, i32 0
  %431 = load i64, i64* %430, align 8
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %441

433:                                              ; preds = %426
  %434 = load i32, i32* @ExternalBbl, align 4
  %435 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %436 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %435, i32 0, i32 3
  %437 = call i32 @set_bit(i32 %434, i32* %436)
  %438 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %439 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %438, i32 0, i32 5
  %440 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %439, i32 0, i32 0
  store i64 0, i64* %440, align 8
  store i32 0, i32* %7, align 4
  br label %458

441:                                              ; preds = %426, %422
  %442 = load i8*, i8** %5, align 8
  %443 = call i64 @cmd_match(i8* %442, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %457

445:                                              ; preds = %441
  %446 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %447 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %446, i32 0, i32 4
  %448 = load %struct.mddev*, %struct.mddev** %447, align 8
  %449 = getelementptr inbounds %struct.mddev, %struct.mddev* %448, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %457

452:                                              ; preds = %445
  %453 = load i32, i32* @ExternalBbl, align 4
  %454 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %455 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %454, i32 0, i32 3
  %456 = call i32 @clear_bit(i32 %453, i32* %455)
  store i32 0, i32* %7, align 4
  br label %457

457:                                              ; preds = %452, %445, %441
  br label %458

458:                                              ; preds = %457, %433
  br label %459

459:                                              ; preds = %458, %421
  br label %460

460:                                              ; preds = %459, %365
  br label %461

461:                                              ; preds = %460, %345
  br label %462

462:                                              ; preds = %461, %321
  br label %463

463:                                              ; preds = %462, %304
  br label %464

464:                                              ; preds = %463, %273
  br label %465

465:                                              ; preds = %464, %264
  br label %466

466:                                              ; preds = %465, %259
  br label %467

467:                                              ; preds = %466, %220
  br label %468

468:                                              ; preds = %467, %211
  br label %469

469:                                              ; preds = %468, %202
  br label %470

470:                                              ; preds = %469, %169
  br label %471

471:                                              ; preds = %470, %136
  br label %472

472:                                              ; preds = %471, %122
  br label %473

473:                                              ; preds = %472, %108
  br label %474

474:                                              ; preds = %473, %103
  br label %475

475:                                              ; preds = %474, %36
  %476 = load i32, i32* %7, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %483, label %478

478:                                              ; preds = %475
  %479 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %480 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %479, i32 0, i32 2
  %481 = load i32, i32* %480, align 8
  %482 = call i32 @sysfs_notify_dirent_safe(i32 %481)
  br label %483

483:                                              ; preds = %478, %475
  %484 = load i32, i32* %7, align 4
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %489

486:                                              ; preds = %483
  %487 = load i32, i32* %7, align 4
  %488 = sext i32 %487 to i64
  br label %491

489:                                              ; preds = %483
  %490 = load i64, i64* %6, align 8
  br label %491

491:                                              ; preds = %489, %486
  %492 = phi i64 [ %488, %486 ], [ %490, %489 ]
  %493 = trunc i64 %492 to i32
  ret i32 %493
}

declare dso_local i64 @cmd_match(i8*, i8*) #1

declare dso_local i32 @md_error(%struct.mddev*, %struct.md_rdev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @remove_and_add_spares(%struct.mddev*, %struct.md_rdev*) #1

declare dso_local i64 @mddev_is_clustered(%struct.mddev*) #1

declare dso_local i32 @md_kick_rdev_from_array(%struct.md_rdev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @md_new_event(%struct.mddev*) #1

declare dso_local i32 @mddev_create_wb_pool(%struct.mddev*, %struct.md_rdev*, i32) #1

declare dso_local i32 @mddev_destroy_wb_pool(%struct.mddev*, %struct.md_rdev*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @add_bound_rdev(%struct.md_rdev*) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
